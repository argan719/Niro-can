#!/usr/bin/env python3

import rospy
from can_msgs.msg import Frame
import struct  # struct 모듈을 임포트합니다.


import itertools



def publisher():
    pub = rospy.Publisher('sent_messages', Frame, queue_size=10)
    # rospy.init_node('can_publisher', anonymous=True)
    rate = rospy.Rate(10) # 10hz

    EPS_en = 1  # 스티어링 제어를 키거나 끈다
    ControlSW = 1 # 1일 때만 제어 상태에 진입 제어 중에는 항상 1이여야 한다
    EPS_Interval = 50   # 스티어링이 돌아가는 속도를 결정한다 - 디폴트가 150, 10~250 까지 조절 가능 
    SCC_En = 0    # 0,1 on/off
    AEB_Act = 0      # 긴급제동시스템을 활성화 한다
    AEB_decel_value = 0x57   # 긴급제동시스템의 감속도를 결정한다 단위는 g  디폴트 0x57 - 최대 1g
    Alive_count = 0    # 메세지 샘플마다 1씩 증가시켜 보낸다. 최댓값 255



    SCC_command = -1 * 100 + -10.23 # 감가속도 얘가 속도 결정 종방향 제어를 키거나 끈다. 엑셀, 브레이크 포함 (음수면 브레이크, 양수면 가속) 단위는  m/s^2
    EPS_command = 0 * 10   # 핸들(=스티어링) 각도 - 10을 곱하는 이유는 factor값 때문. 섭스크라이브 할 때는 곱하기 해주고 퍼블리쉬할 때는 똑같은 팩터 값을 나눠주고
    p = 1

    while not rospy.is_shutdown():
        frame = Frame()
        frame.id = 0x156
        frame.dlc = 8
        frame.data = bytearray(8)  # 데이터를 bytearray로 초기화
        frame.data[7] = Alive_count
        frame.data[6] = 0
        frame.data[5] = 0
        frame.data[4] = 0
        frame.data[3] = AEB_decel_value
        frame.data[2] = SCC_En + (AEB_Act << 6)
        frame.data[1] = EPS_Interval
        frame.data[0] = EPS_en + (ControlSW << 7)
        Alive_count = (Alive_count + 1) % 256
        
        rospy.loginfo(frame)
        pub.publish(frame)


        frame.id = 0x157
        frame.dlc = 8
        frame.data[7] = 0
        frame.data[6] = 0
        frame.data[5] = 0
        frame.data[4] = (SCC_command & 0xff00) >> 8
        frame.data[3] = SCC_command & 0x00ff
        frame.data[2] = 0
        frame.data[1] = (EPS_command & 0xff00) >> 8
        frame.data[0] = EPS_command & 0x00ff 
        

        # 90에서 -90까지 감소하고, -90에서 90까지 증가하는 루프 생성
        # for value in itertools.cycle(itertools.chain(range(90, -91, -1), range(-90, 91, 1))):
        #     EPS_command = value * 10
 
        pub.publish(frame)


        EPS_command = (EPS_command + p )* 10
        if(EPS_command <= -90): p = 1
        elif(EPS_command >= 90): p = -1   # p값을 소수점으로 바꾸기..

        rate.sleep()   # 10m/s 맞춰주기




def subscriber():
    rospy.init_node('can_subscriber', anonymous=True)
    rospy.Subscriber('received_messages', Frame, callback)
    publisher()




def callback(msg):
    if msg.id == 0x710:  # 특정 CAN ID '0x157'에 해당하는 메시지만 처리
        if len(msg.data) >= 4:  # 최소 4바이트가 필요
            # 네 바이트를 unsigned int로 파싱
            #parsed_int = struct.unpack('>h', bytearray(data.data[1:3]))[0]
            temp = msg.data
            parsed_int = int(temp[1]) + ((temp[2]) << 8)
            parsed_int = parsed_int * 0.1  # factor 값 곱해주기
           # rospy.loginfo("Received message with ID 0x710: int value = {:.2f}".format(parsed_int))
        else:
            a=0
            #rospy.loginfo("Data too short for parsing as int.")



if __name__ == '__main__':
    try:
        subscriber()  # subscriber 함수를 실행
        rospy.spin()  # ROS가 종료될 때까지 무한 대기
    except rospy.ROSInterruptException:
        pass
