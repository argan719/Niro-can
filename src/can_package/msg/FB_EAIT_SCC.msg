
uint8 ACC_control_state  # 0|4@1+ (1,0) [0|10]
bool EPS_En_FB           # 4|1@1+ (1,0) [0|1]
bool Override_ACC_state  # 6|1@1+ (1,0) [0|1]
bool Override_BRK_state  # 7|1@1+ (1,0) [0|1]
uint8 Vehicle_speed      # 8|8@1+ (1,0) [0|255] kph
bool AEB_state           # 5|1@1+ (1,0) [0|1]
float32 Long_Accel       # 16|16@1+ (0.000127465,-4.17677312) [-4.17677312|4.176645655] m/s^2
uint8 Gear_Disp          # 32|4@1+ (1,0) [0|15]
