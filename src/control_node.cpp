#include "ros/ros.h"
#include "can_msgs/Frame.h"
#include "can_package/FB_EAIT_EPS.h"
#include "can_package/FB_EAIT_SCC.h"
#include "can_package/FB_EAIT_SPD.h"
#include "can_package/FB_EAIT_IMU.h"
#include "can_package/CONTROL_MSG.h"
#include "can_package/FEEDBACK.h"

ros::Publisher combined_pub;
can_package::CONTROL_MSG control;


void feedback(const can_msgs::Frame::ConstPtr& msg)
{
    // can_package::FB_EAIT_EPS container_710;
    // can_package::FB_EAIT_SCC container_711;
    // can_package::FB_EAIT_SPD container_712;
    // can_package::FB_EAIT_IMU container_713;

    can_package::FEEDBACK combined_msg;
    int16_t parsed_int;


    if (msg->id == 0x710) {

        parsed_int = msg->data[1] + (msg->data[2] << 8);
        combined_msg.container_710.Steering_angle = (float)parsed_int * 0.1;
        ROS_INFO("[Steering_angle] with ID 0x710: int value = %.2f\n", combined_msg.container_710.Steering_angle);


        parsed_int = (msg->data[0] & 0x0f);
        combined_msg.container_710.EPS_control_state = parsed_int; 
        ROS_INFO("[EPS_control_state] with ID 0x710: int value = %d\n", parsed_int);

        parsed_int = ((msg->data[0] & 0x80) >> 7);
        combined_msg.container_710.Override_state = parsed_int;
        ROS_INFO("[Override_state] with ID 0x710: int value = %d\n", parsed_int);

        parsed_int = ((msg->data[0] & 0x10) >> 4);
        combined_msg.container_710.EPS_En_FB = parsed_int;
        ROS_INFO("[EPS_En_FB] with ID 0x710: int value = %d\n", parsed_int);


        parsed_int = ((msg->data[0] & 0x20) >> 5);
        combined_msg.container_710.Control_SW_FB = parsed_int;
        ROS_INFO("[Control_SW_FB] with ID 0x710: int value = %d\n", parsed_int);


        parsed_int = msg->data[7];
        combined_msg.container_710.FB_alive_count = parsed_int;
        ROS_INFO("[FB_alive_count] with ID 0x710: int value = %d\n", parsed_int);
    }
    else if (msg->id == 0x711)
    {

        parsed_int = (msg->data[0] & 0x0f);
        combined_msg.container_711.ACC_control_state = parsed_int;
        ROS_INFO("[ACC_control_state] with ID 0x711: int value = %d\n", parsed_int);


        parsed_int = ((msg->data[0] & 0x10) >> 4);
        combined_msg.container_711.EPS_En_FB = parsed_int;
        ROS_INFO("[EPS_En_FB] with ID 0x711: int value = %d\n", parsed_int);
        

        parsed_int = ((msg->data[0] & 0x40) >> 6);
        combined_msg.container_711.Override_ACC_state = parsed_int;
        ROS_INFO("[Override_ACC_state] with ID 0x711: int value = %d\n", parsed_int);


        parsed_int = ((msg->data[0] & 0x80) >> 7);
        combined_msg.container_711.Override_BRK_state = parsed_int;
        ROS_INFO("[Override_BRK_state] with ID 0x711: int value = %d\n", parsed_int);

        parsed_int = msg->data[1];
        combined_msg.container_711.Vehicle_speed = parsed_int;
        ROS_INFO("[Vehicle_speed] with ID 0x711: int value = %d\n", parsed_int);
       

        parsed_int = ((msg->data[0] & 0x20) >> 5);
        combined_msg.container_711.AEB_state = parsed_int;
        ROS_INFO("[AEB_state] with ID 0x711: int value = %d\n", parsed_int);


        parsed_int = (msg->data[2] | (msg->data[3] << 8));
        combined_msg.container_711.Long_Accel = (float)parsed_int * 0.000127465 + 4.17677312;
        ROS_INFO("[Long_Accel] with ID 0x711: int value = %.10f\n", combined_msg.container_711.Long_Accel);


        parsed_int = msg->data[4] & 0x0f;
        combined_msg.container_711.Gear_Disp = parsed_int;
        ROS_INFO("[Gear_Disp] with ID 0x711: int value = %feedbackd\n", parsed_int);
    }
    else if(msg->id == 0x712){

        parsed_int = msg->data[0] | (msg->data[1] << 8);
        combined_msg.container_712.WHL_SPD_FL = parsed_int * 0.03125;
        ROS_INFO("[WHL_SPD_FL] with ID 0x712: int value = %.2f\n", combined_msg.container_712.WHL_SPD_FL);


        parsed_int = msg->data[2] | (msg->data[3] << 8);
        combined_msg.container_712.WHL_SPD_FR = parsed_int * 0.03125;
        ROS_INFO("[WHL_SPD_FR] with ID 0x712: int value = %.2f\n", combined_msg.container_712.WHL_SPD_FR);

        parsed_int = msg->data[4] | (msg->data[5] << 8);
        combined_msg.container_712.WHL_SPD_RL = parsed_int * 0.03125;
        ROS_INFO("[WHL_SPD_RL] with ID 0x712: int value = %.2f\n", combined_msg.container_712.WHL_SPD_RL);

        parsed_int = msg->data[6] | (msg->data[7] << 8);
        combined_msg.container_712.WHL_SPD_RR = parsed_int * 0.03125;
        ROS_INFO("[WHL_SPD_RR] with ID 0x712: int value = %.2f\n", combined_msg.container_712.WHL_SPD_RR);
    }
    else if(msg->id == 0x713){

        parsed_int = msg->data[2] | msg->data[3];
        combined_msg.container_713.Lat_Accel = (float)parsed_int * 0.000127465 + 4.17677;
        ROS_INFO("[Lat_Accel] with ID 0x713: int value = %.2f\n", combined_msg.container_713.Lat_Accel);

        parsed_int = msg->data[4] | msg->data[5];
        combined_msg.container_713.Yaw_Rate = (float)parsed_int * 0.005 + 163.84;
        ROS_INFO("[Yaw_Rate] with ID 0x713: int value = %.2f\n", combined_msg.container_713.Yaw_Rate);

        parsed_int = msg->data[0] | msg->data[1];
        combined_msg.container_713.Long_Accel = (float)parsed_int * 0.000127465 + 40.9323;
        ROS_INFO("[Long_Accel] with ID 0x713: int value = %.2f\n", combined_msg.container_713.Long_Accel);
        
    } 

    combined_pub.publish(combined_msg);

}



void subscribe_from_plan(const can_package::CONTROL_MSG container){

    control.EPS_en = container.EPS_en; 
    control.ControlSW = container.ControlSW;
    control.EPS_Interval = container.EPS_Interval;
    control.SCC_En = container.SCC_En;
    control.AEB_Act = container.AEB_Act;
    control.AEB_decel_value = container.AEB_decel_value;
    // control.Alive_count = container.Alive_count;
    control.SCC_value = container.  SCC_value;
    control.EPS_value = container.EPS_value;

}





int main(int argc, char **argv)
{
    ros::init(argc, argv, "can_node");
    ros::NodeHandle n;

    ros::Publisher pub_to_can = n.advertise<can_msgs::Frame>("sent_messages", 10);

    combined_pub = n.advertise<can_package::CONTROL_MSG>("combined_pub", 10);

    // pub_to_EPS = n.advertise<can_package::FB_EAIT_EPS>("FB_EAIT_EPS", 10);
    // pub_to_SCC = n.advertise<can_package::FB_EAIT_SCC>("FB_EAIT_SCC", 10);
    // pub_to_SPD = n.advertise<can_package::FB_EAIT_SPD>("FB_EAIT_SPD", 10);
    // pub_to_IMU = n.advertise<can_package::FB_EAIT_IMU>("FB_EAIT_IMU", 10);


    ros::Subscriber sub_from_plan = n.subscribe("control_command", 10, subscribe_from_plan);
    ros::Subscriber sub_from_vehicle = n.subscribe("received_messages", 10, feedback);

    ros::Rate rate(10); // 10 Hz

    
  /*uint8_t EPS_en = 0;  // 스티어링
    uint8_t ControlSW = 0;
    uint8_t EPS_Interval = 50;
    uint8_t SCC_En = 1;  // 감가속(엑셀) - 1이어야 제어 가능
    uint8_t AEB_Act = 0;
    uint8_t AEB_decel_value = 0x57;
    uint8_t Alive_count = 0;
    float SCC_value = -1;
    float EPS_value = -1; */
    

// pub할 때 offset 빼주고 factor 나눠주고 
    int16_t SCC_command = 0;
    int16_t EPS_command = 0;

    while (ros::ok()) {
        can_msgs::Frame frame;
        frame.id = 0x156;
        frame.dlc = 8;
        //frame.data.resize(8);
        frame.data = {{0}};
        frame.data[7] = control.Alive_count;
        frame.data[6] = 0;
        frame.data[5] = 0;
        frame.data[4] = 0;
        frame.data[3] = control.AEB_decel_value;
        frame.data[2] = control.SCC_En + (control.AEB_Act << 6);
        frame.data[1] = control.EPS_Interval;
        frame.data[0] = control.EPS_en + (control.ControlSW << 7);
        control.Alive_count = (control.Alive_count + 1) % 256;

        pub_to_can.publish(frame);

        frame.id = 0x157;
        frame.dlc = 8;

        SCC_command = (int16_t)((control.SCC_value + 10.23) * 100);
        EPS_command = (int16_t)(control.EPS_value * 10);

        if(EPS_command < -4500)  EPS_command = -4500;
        else if(EPS_command > 4500) EPS_command = 4500;

        if(SCC_command < 723) SCC_command = 723;
        else if(SCC_command > 1223) SCC_command = 1223;
        

        // Reinitialize for the new message
        frame.data = {{0}};
        frame.data[7] = 0;
        frame.data[6] = 0;
        frame.data[5] = 0;
        frame.data[4] = (SCC_command & 0xff00) >> 8;
        frame.data[3] = SCC_command & 0x00ff;
        frame.data[2] = 0;
        frame.data[1] = (EPS_command & 0xff00) >> 8;
        frame.data[0] = EPS_command & 0x00ff;

        pub_to_can.publish(frame);

        ros::spinOnce();
        rate.sleep();
    }

    return 0;
}
