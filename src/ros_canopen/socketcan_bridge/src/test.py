#!/usr/bin/env python
import rospy
from can_msgs.msg import Frame

def publisher():
    pub = rospy.Publisher('sent_messages', Frame, queue_size=10)
    rospy.init_node('can_publisher', anonymous=True)
    rate = rospy.Rate(10) # 10hz
    while not rospy.is_shutdown():
        frame = Frame()
        frame.id = 0x123
        frame.data = [0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88]
        frame.dlc = 8
        rospy.loginfo(frame)
        pub.publish(frame)
        rate.sleep()

if __name__ == '__main__':
    try:
        publisher()
    except rospy.ROSInterruptException:
        pass
