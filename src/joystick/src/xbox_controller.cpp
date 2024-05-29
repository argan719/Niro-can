#include <ros/ros.h>
#include <joystick/control_msg.h>
#include <SDL2/SDL.h>

int main(int argc, char** argv) {
    ros::init(argc, argv, "xbox_controller");
    ros::NodeHandle nh;

    ros::Publisher joystick_pub = nh.advertise<joystick::control_msg>("control_command", 10);

    if (SDL_Init(SDL_INIT_JOYSTICK) < 0) {
        ROS_ERROR("Failed to initialize SDL: %s", SDL_GetError());
        return -1;
    }

    if (SDL_NumJoysticks() < 1) {
        ROS_ERROR("No joysticks connected!");
        return -1;
    }

    SDL_Joystick* joystick = SDL_JoystickOpen(0);
    if (!joystick) {
        ROS_ERROR("Failed to open joystick: %s", SDL_GetError());
        return -1;
    }

    // Variables to store the toggle state and previous button state
    uint8_t toggleStateA = 0;
    uint8_t previousAButtonState = 0;
    uint8_t toggleStateB = 0;
    uint8_t previousBButtonState = 0;
    uint8_t toggleStateX = 0;
    uint8_t previousXButtonState = 0;
    uint8_t toggleStateY = 0;
    uint8_t previousYButtonState = 0;

    ros::Rate rate(10); // 10 Hz
    while (ros::ok()) {
        SDL_JoystickUpdate();

        int16_t left_y = SDL_JoystickGetAxis(joystick, 1);
        int16_t right_x = SDL_JoystickGetAxis(joystick, 3);
        uint8_t a_button = SDL_JoystickGetButton(joystick, 0);
        uint8_t b_button = SDL_JoystickGetButton(joystick, 1);
        uint8_t x_button = SDL_JoystickGetButton(joystick, 2);
        uint8_t y_button = SDL_JoystickGetButton(joystick, 3);

        // Toggle logic for A button
        if (a_button == 1 && previousAButtonState == 0) {
            toggleStateA = !toggleStateA;
        }
        previousAButtonState = a_button;

        // Toggle logic for B button
        if (b_button == 1 && previousBButtonState == 0) {
            toggleStateB = !toggleStateB;
        }
        previousBButtonState = b_button;

        // Toggle logic for X button
        if (x_button == 1 && previousXButtonState == 0) {
            toggleStateX = !toggleStateX;
        }
        previousXButtonState = x_button;

        // Toggle logic for Y button
        if (y_button == 1 && previousYButtonState == 0) {
            toggleStateY = !toggleStateY;
        }
        previousYButtonState = y_button;

        joystick::control_msg msg;
        msg.EPS_en = toggleStateY; 
        msg.ControlSW = toggleStateX;
        msg.EPS_Interval = 50; 
        msg.SCC_En = toggleStateA; 
        msg.AEB_Act = toggleStateB; 
        msg.AEB_decel_value = 0; 
        msg.Alive_count = 0; 
        msg.EPS_value = - (right_x/32767.0) * 450 ; //scaling
        msg.SCC_value = - left_y / 32767.0 ; //scaling
        
        if (msg.SCC_value == 0)
            msg.SCC_value = -0.2;
            
        joystick_pub.publish(msg);

        ros::spinOnce();
        rate.sleep();
    }

    SDL_JoystickClose(joystick);
    SDL_Quit();
    return 0;
}