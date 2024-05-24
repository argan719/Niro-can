
bool EPS_En_FB          # 4|1@1+ (1,0) [0|1]
bool Override_state     # 7|1@1+ (1,0) [0|1]
uint8 EPS_control_state # 0|4@1+ (1,0) [0|10]
float32 Steering_angle  # 8|16@1- (0.1,0) [-540|540] deg
bool Control_SW_FB      # 5|1@1+ (1,0) [0|1]
uint16 Str_Tq_1        # 24|13@1+ (0.01,-20.48) [-20.48|61.43]
uint16 Str_Tq_2        # 40|12@1+ (0.1,-204.8) [-204.8|204.7]
uint8 FB_alive_count    # 56|8@1+ (1,0) [0|255]
