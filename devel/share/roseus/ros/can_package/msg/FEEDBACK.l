;; Auto-generated. Do not edit!


(when (boundp 'can_package::FEEDBACK)
  (if (not (find-package "CAN_PACKAGE"))
    (make-package "CAN_PACKAGE"))
  (shadow 'FEEDBACK (find-package "CAN_PACKAGE")))
(unless (find-package "CAN_PACKAGE::FEEDBACK")
  (make-package "CAN_PACKAGE::FEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude FEEDBACK.msg.html


(defclass can_package::FEEDBACK
  :super ros::object
  :slots (_container_710 _container_711 _container_712 _container_713 ))

(defmethod can_package::FEEDBACK
  (:init
   (&key
    ((:container_710 __container_710) (instance can_package::FB_EAIT_EPS :init))
    ((:container_711 __container_711) (instance can_package::FB_EAIT_SCC :init))
    ((:container_712 __container_712) (instance can_package::FB_EAIT_SPD :init))
    ((:container_713 __container_713) (instance can_package::FB_EAIT_IMU :init))
    )
   (send-super :init)
   (setq _container_710 __container_710)
   (setq _container_711 __container_711)
   (setq _container_712 __container_712)
   (setq _container_713 __container_713)
   self)
  (:container_710
   (&rest __container_710)
   (if (keywordp (car __container_710))
       (send* _container_710 __container_710)
     (progn
       (if __container_710 (setq _container_710 (car __container_710)))
       _container_710)))
  (:container_711
   (&rest __container_711)
   (if (keywordp (car __container_711))
       (send* _container_711 __container_711)
     (progn
       (if __container_711 (setq _container_711 (car __container_711)))
       _container_711)))
  (:container_712
   (&rest __container_712)
   (if (keywordp (car __container_712))
       (send* _container_712 __container_712)
     (progn
       (if __container_712 (setq _container_712 (car __container_712)))
       _container_712)))
  (:container_713
   (&rest __container_713)
   (if (keywordp (car __container_713))
       (send* _container_713 __container_713)
     (progn
       (if __container_713 (setq _container_713 (car __container_713)))
       _container_713)))
  (:serialization-length
   ()
   (+
    ;; can_package/FB_EAIT_EPS _container_710
    (send _container_710 :serialization-length)
    ;; can_package/FB_EAIT_SCC _container_711
    (send _container_711 :serialization-length)
    ;; can_package/FB_EAIT_SPD _container_712
    (send _container_712 :serialization-length)
    ;; can_package/FB_EAIT_IMU _container_713
    (send _container_713 :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; can_package/FB_EAIT_EPS _container_710
       (send _container_710 :serialize s)
     ;; can_package/FB_EAIT_SCC _container_711
       (send _container_711 :serialize s)
     ;; can_package/FB_EAIT_SPD _container_712
       (send _container_712 :serialize s)
     ;; can_package/FB_EAIT_IMU _container_713
       (send _container_713 :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; can_package/FB_EAIT_EPS _container_710
     (send _container_710 :deserialize buf ptr-) (incf ptr- (send _container_710 :serialization-length))
   ;; can_package/FB_EAIT_SCC _container_711
     (send _container_711 :deserialize buf ptr-) (incf ptr- (send _container_711 :serialization-length))
   ;; can_package/FB_EAIT_SPD _container_712
     (send _container_712 :deserialize buf ptr-) (incf ptr- (send _container_712 :serialization-length))
   ;; can_package/FB_EAIT_IMU _container_713
     (send _container_713 :deserialize buf ptr-) (incf ptr- (send _container_713 :serialization-length))
   ;;
   self)
  )

(setf (get can_package::FEEDBACK :md5sum-) "f344d1fad6e38400d9bbe521baaeced1")
(setf (get can_package::FEEDBACK :datatype-) "can_package/FEEDBACK")
(setf (get can_package::FEEDBACK :definition-)
      "can_package/FB_EAIT_EPS container_710
can_package/FB_EAIT_SCC container_711
can_package/FB_EAIT_SPD container_712
can_package/FB_EAIT_IMU container_713

================================================================================
MSG: can_package/FB_EAIT_EPS

bool EPS_En_FB          # 4|1@1+ (1,0) [0|1]
bool Override_state     # 7|1@1+ (1,0) [0|1]
uint8 EPS_control_state # 0|4@1+ (1,0) [0|10]
float32 Steering_angle  # 8|16@1- (0.1,0) [-540|540] deg
bool Control_SW_FB      # 5|1@1+ (1,0) [0|1]
uint16 Str_Tq_1        # 24|13@1+ (0.01,-20.48) [-20.48|61.43]
uint16 Str_Tq_2        # 40|12@1+ (0.1,-204.8) [-204.8|204.7]
uint8 FB_alive_count    # 56|8@1+ (1,0) [0|255]

================================================================================
MSG: can_package/FB_EAIT_SCC

uint8 ACC_control_state  # 0|4@1+ (1,0) [0|10]
bool EPS_En_FB           # 4|1@1+ (1,0) [0|1]
bool Override_ACC_state  # 6|1@1+ (1,0) [0|1]
bool Override_BRK_state  # 7|1@1+ (1,0) [0|1]
uint8 Vehicle_speed      # 8|8@1+ (1,0) [0|255] kph
bool AEB_state           # 5|1@1+ (1,0) [0|1]
float32 Long_Accel       # 16|16@1+ (0.000127465,-4.17677312) [-4.17677312|4.176645655] m/s^2
uint8 Gear_Disp          # 32|4@1+ (1,0) [0|15]

================================================================================
MSG: can_package/FB_EAIT_SPD

uint16 WHL_SPD_FL    # 0|14@1+ (0.03125,0) [0|511.96875]
uint16 WHL_SPD_FR    # 16|14@1+ (0.03125,0) [0|511.96875]
uint16 WHL_SPD_RL    # 32|14@1+ (0.03125,0) [0|511.96875]
uint16 WHL_SPD_RR    # 48|14@1+ (0.03125,0) [0|511.96875]

================================================================================
MSG: can_package/FB_EAIT_IMU
float32 Lat_Accel    # 16|16@1+ (0.000127564,-4.17677312) [-4.17677312|4.18313362] m/s^2
float32 Yaw_Rate     # 32|16@1+ (0.005,-163.84) [-163.84|163.835] deg/s
float32 Long_Accel   # 0|16@1+ (0.001249157,-40.9323) [-40.9323|4.176645655] m/s^2

")



(provide :can_package/FEEDBACK "f344d1fad6e38400d9bbe521baaeced1")


