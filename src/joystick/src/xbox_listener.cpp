#include <ros/ros.h>
#include <joystick/control_msg.h>

void joystickCallback(const joystick::control_msg::ConstPtr& msg) {
    ROS_INFO("EPS_en: %d", msg->EPS_en);
    ROS_INFO("ControlSW: %d", msg->ControlSW);
    ROS_INFO("EPS_Interval: %d", msg->EPS_Interval);
    ROS_INFO("SCC_En: %d", msg->SCC_En);
    ROS_INFO("AEB_Act: %d", msg->AEB_Act);
    ROS_INFO("AEB_decel_value: %d", msg->AEB_decel_value);
    ROS_INFO("Alive_count: %d", msg->Alive_count);
    ROS_INFO("SCC_value: %f", msg->SCC_value);
    ROS_INFO("EPS_value: %f", msg->EPS_value);
}

int main(int argc, char **argv) {
    ros::init(argc, argv, "xbox_listener");
    ros::NodeHandle nh;

    ros::Subscriber joystick_sub = nh.subscribe("control_command", 10, joystickCallback);

    ros::spin();

    return 0;
}