; Auto-generated. Do not edit!


(cl:in-package can_package-msg)


;//! \htmlinclude FEEDBACK.msg.html

(cl:defclass <FEEDBACK> (roslisp-msg-protocol:ros-message)
  ((container_710
    :reader container_710
    :initarg :container_710
    :type can_package-msg:FB_EAIT_EPS
    :initform (cl:make-instance 'can_package-msg:FB_EAIT_EPS))
   (container_711
    :reader container_711
    :initarg :container_711
    :type can_package-msg:FB_EAIT_SCC
    :initform (cl:make-instance 'can_package-msg:FB_EAIT_SCC))
   (container_712
    :reader container_712
    :initarg :container_712
    :type can_package-msg:FB_EAIT_SPD
    :initform (cl:make-instance 'can_package-msg:FB_EAIT_SPD))
   (container_713
    :reader container_713
    :initarg :container_713
    :type can_package-msg:FB_EAIT_IMU
    :initform (cl:make-instance 'can_package-msg:FB_EAIT_IMU)))
)

(cl:defclass FEEDBACK (<FEEDBACK>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FEEDBACK>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FEEDBACK)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name can_package-msg:<FEEDBACK> is deprecated: use can_package-msg:FEEDBACK instead.")))

(cl:ensure-generic-function 'container_710-val :lambda-list '(m))
(cl:defmethod container_710-val ((m <FEEDBACK>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_package-msg:container_710-val is deprecated.  Use can_package-msg:container_710 instead.")
  (container_710 m))

(cl:ensure-generic-function 'container_711-val :lambda-list '(m))
(cl:defmethod container_711-val ((m <FEEDBACK>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_package-msg:container_711-val is deprecated.  Use can_package-msg:container_711 instead.")
  (container_711 m))

(cl:ensure-generic-function 'container_712-val :lambda-list '(m))
(cl:defmethod container_712-val ((m <FEEDBACK>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_package-msg:container_712-val is deprecated.  Use can_package-msg:container_712 instead.")
  (container_712 m))

(cl:ensure-generic-function 'container_713-val :lambda-list '(m))
(cl:defmethod container_713-val ((m <FEEDBACK>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_package-msg:container_713-val is deprecated.  Use can_package-msg:container_713 instead.")
  (container_713 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FEEDBACK>) ostream)
  "Serializes a message object of type '<FEEDBACK>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'container_710) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'container_711) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'container_712) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'container_713) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FEEDBACK>) istream)
  "Deserializes a message object of type '<FEEDBACK>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'container_710) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'container_711) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'container_712) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'container_713) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FEEDBACK>)))
  "Returns string type for a message object of type '<FEEDBACK>"
  "can_package/FEEDBACK")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FEEDBACK)))
  "Returns string type for a message object of type 'FEEDBACK"
  "can_package/FEEDBACK")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FEEDBACK>)))
  "Returns md5sum for a message object of type '<FEEDBACK>"
  "f344d1fad6e38400d9bbe521baaeced1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FEEDBACK)))
  "Returns md5sum for a message object of type 'FEEDBACK"
  "f344d1fad6e38400d9bbe521baaeced1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FEEDBACK>)))
  "Returns full string definition for message of type '<FEEDBACK>"
  (cl:format cl:nil "can_package/FB_EAIT_EPS container_710~%can_package/FB_EAIT_SCC container_711~%can_package/FB_EAIT_SPD container_712~%can_package/FB_EAIT_IMU container_713~%~%================================================================================~%MSG: can_package/FB_EAIT_EPS~%~%bool EPS_En_FB          # 4|1@1+ (1,0) [0|1]~%bool Override_state     # 7|1@1+ (1,0) [0|1]~%uint8 EPS_control_state # 0|4@1+ (1,0) [0|10]~%float32 Steering_angle  # 8|16@1- (0.1,0) [-540|540] deg~%bool Control_SW_FB      # 5|1@1+ (1,0) [0|1]~%uint16 Str_Tq_1        # 24|13@1+ (0.01,-20.48) [-20.48|61.43]~%uint16 Str_Tq_2        # 40|12@1+ (0.1,-204.8) [-204.8|204.7]~%uint8 FB_alive_count    # 56|8@1+ (1,0) [0|255]~%~%================================================================================~%MSG: can_package/FB_EAIT_SCC~%~%uint8 ACC_control_state  # 0|4@1+ (1,0) [0|10]~%bool EPS_En_FB           # 4|1@1+ (1,0) [0|1]~%bool Override_ACC_state  # 6|1@1+ (1,0) [0|1]~%bool Override_BRK_state  # 7|1@1+ (1,0) [0|1]~%uint8 Vehicle_speed      # 8|8@1+ (1,0) [0|255] kph~%bool AEB_state           # 5|1@1+ (1,0) [0|1]~%float32 Long_Accel       # 16|16@1+ (0.000127465,-4.17677312) [-4.17677312|4.176645655] m/s^2~%uint8 Gear_Disp          # 32|4@1+ (1,0) [0|15]~%~%================================================================================~%MSG: can_package/FB_EAIT_SPD~%~%uint16 WHL_SPD_FL    # 0|14@1+ (0.03125,0) [0|511.96875]~%uint16 WHL_SPD_FR    # 16|14@1+ (0.03125,0) [0|511.96875]~%uint16 WHL_SPD_RL    # 32|14@1+ (0.03125,0) [0|511.96875]~%uint16 WHL_SPD_RR    # 48|14@1+ (0.03125,0) [0|511.96875]~%~%================================================================================~%MSG: can_package/FB_EAIT_IMU~%float32 Lat_Accel    # 16|16@1+ (0.000127564,-4.17677312) [-4.17677312|4.18313362] m/s^2~%float32 Yaw_Rate     # 32|16@1+ (0.005,-163.84) [-163.84|163.835] deg/s~%float32 Long_Accel   # 0|16@1+ (0.001249157,-40.9323) [-40.9323|4.176645655] m/s^2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FEEDBACK)))
  "Returns full string definition for message of type 'FEEDBACK"
  (cl:format cl:nil "can_package/FB_EAIT_EPS container_710~%can_package/FB_EAIT_SCC container_711~%can_package/FB_EAIT_SPD container_712~%can_package/FB_EAIT_IMU container_713~%~%================================================================================~%MSG: can_package/FB_EAIT_EPS~%~%bool EPS_En_FB          # 4|1@1+ (1,0) [0|1]~%bool Override_state     # 7|1@1+ (1,0) [0|1]~%uint8 EPS_control_state # 0|4@1+ (1,0) [0|10]~%float32 Steering_angle  # 8|16@1- (0.1,0) [-540|540] deg~%bool Control_SW_FB      # 5|1@1+ (1,0) [0|1]~%uint16 Str_Tq_1        # 24|13@1+ (0.01,-20.48) [-20.48|61.43]~%uint16 Str_Tq_2        # 40|12@1+ (0.1,-204.8) [-204.8|204.7]~%uint8 FB_alive_count    # 56|8@1+ (1,0) [0|255]~%~%================================================================================~%MSG: can_package/FB_EAIT_SCC~%~%uint8 ACC_control_state  # 0|4@1+ (1,0) [0|10]~%bool EPS_En_FB           # 4|1@1+ (1,0) [0|1]~%bool Override_ACC_state  # 6|1@1+ (1,0) [0|1]~%bool Override_BRK_state  # 7|1@1+ (1,0) [0|1]~%uint8 Vehicle_speed      # 8|8@1+ (1,0) [0|255] kph~%bool AEB_state           # 5|1@1+ (1,0) [0|1]~%float32 Long_Accel       # 16|16@1+ (0.000127465,-4.17677312) [-4.17677312|4.176645655] m/s^2~%uint8 Gear_Disp          # 32|4@1+ (1,0) [0|15]~%~%================================================================================~%MSG: can_package/FB_EAIT_SPD~%~%uint16 WHL_SPD_FL    # 0|14@1+ (0.03125,0) [0|511.96875]~%uint16 WHL_SPD_FR    # 16|14@1+ (0.03125,0) [0|511.96875]~%uint16 WHL_SPD_RL    # 32|14@1+ (0.03125,0) [0|511.96875]~%uint16 WHL_SPD_RR    # 48|14@1+ (0.03125,0) [0|511.96875]~%~%================================================================================~%MSG: can_package/FB_EAIT_IMU~%float32 Lat_Accel    # 16|16@1+ (0.000127564,-4.17677312) [-4.17677312|4.18313362] m/s^2~%float32 Yaw_Rate     # 32|16@1+ (0.005,-163.84) [-163.84|163.835] deg/s~%float32 Long_Accel   # 0|16@1+ (0.001249157,-40.9323) [-40.9323|4.176645655] m/s^2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FEEDBACK>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'container_710))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'container_711))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'container_712))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'container_713))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FEEDBACK>))
  "Converts a ROS message object to a list"
  (cl:list 'FEEDBACK
    (cl:cons ':container_710 (container_710 msg))
    (cl:cons ':container_711 (container_711 msg))
    (cl:cons ':container_712 (container_712 msg))
    (cl:cons ':container_713 (container_713 msg))
))
