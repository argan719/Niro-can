#include "ros/ros.h"
#include "can_msgs/Frame.h"

void callback(const can_msgs::Frame::ConstPtr& msg)
{
    if (msg->id == 0x710) {
        if (msg->data.size() >= 4) {
            uint16_t parsed_int = msg->data[1] + (msg->data[2] << 8);
            float parsed_value = parsed_int * 0.1;
            ROS_INFO("Received message with ID 0x710: int value = %.2f", parsed_value);
        } else {
            ROS_INFO("Data too short for parsing as int.");
        }
    }
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "can_node");
    ros::NodeHandle n;

    ros::Publisher pub = n.advertise<can_msgs::Frame>("sent_messages", 10);
    ros::Subscriber sub = n.subscribe("received_messages", 10, callback);

    ros::Rate rate(10); // 10 Hz

    uint8_t EPS_en = 1;
    uint8_t ControlSW = 1;
    uint8_t EPS_Interval = 50;
    uint8_t SCC_En = 0;
    uint8_t AEB_Act = 0;
    uint8_t AEB_decel_value = 0x57;
    uint8_t Alive_count = 0;

    int16_t SCC_command = 0;
    int16_t EPS_command = 90;

    while (ros::ok()) {
        can_msgs::Frame frame;
        frame.id = 0x156;
        frame.dlc = 8;
        //frame.data.resize(8);
        frame.data = {{0}};
        frame.data[7] = Alive_count;
        frame.data[6] = 0;
        frame.data[5] = 0;
        frame.data[4] = 0;
        frame.data[3] = AEB_decel_value;
        frame.data[2] = SCC_En + (AEB_Act << 6);
        frame.data[1] = EPS_Interval;
        frame.data[0] = EPS_en + (ControlSW << 7);
        Alive_count = (Alive_count + 1) % 256;

        pub.publish(frame);

        frame.id = 0x157;
        frame.dlc = 8;

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

        pub.publish(frame);

        ros::spinOnce();
        rate.sleep();
    }

    return 0;
}
