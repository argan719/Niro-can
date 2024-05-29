; Auto-generated. Do not edit!


(cl:in-package can_package-msg)


;//! \htmlinclude FB_EAIT_EPS.msg.html

(cl:defclass <FB_EAIT_EPS> (roslisp-msg-protocol:ros-message)
  ((EPS_En_FB
    :reader EPS_En_FB
    :initarg :EPS_En_FB
    :type cl:boolean
    :initform cl:nil)
   (Override_state
    :reader Override_state
    :initarg :Override_state
    :type cl:boolean
    :initform cl:nil)
   (EPS_control_state
    :reader EPS_control_state
    :initarg :EPS_control_state
    :type cl:fixnum
    :initform 0)
   (Steering_angle
    :reader Steering_angle
    :initarg :Steering_angle
    :type cl:float
    :initform 0.0)
   (Control_SW_FB
    :reader Control_SW_FB
    :initarg :Control_SW_FB
    :type cl:boolean
    :initform cl:nil)
   (Str_Tq_1
    :reader Str_Tq_1
    :initarg :Str_Tq_1
    :type cl:fixnum
    :initform 0)
   (Str_Tq_2
    :reader Str_Tq_2
    :initarg :Str_Tq_2
    :type cl:fixnum
    :initform 0)
   (FB_alive_count
    :reader FB_alive_count
    :initarg :FB_alive_count
    :type cl:fixnum
    :initform 0))
)

(cl:defclass FB_EAIT_EPS (<FB_EAIT_EPS>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FB_EAIT_EPS>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FB_EAIT_EPS)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name can_package-msg:<FB_EAIT_EPS> is deprecated: use can_package-msg:FB_EAIT_EPS instead.")))

(cl:ensure-generic-function 'EPS_En_FB-val :lambda-list '(m))
(cl:defmethod EPS_En_FB-val ((m <FB_EAIT_EPS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_package-msg:EPS_En_FB-val is deprecated.  Use can_package-msg:EPS_En_FB instead.")
  (EPS_En_FB m))

(cl:ensure-generic-function 'Override_state-val :lambda-list '(m))
(cl:defmethod Override_state-val ((m <FB_EAIT_EPS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_package-msg:Override_state-val is deprecated.  Use can_package-msg:Override_state instead.")
  (Override_state m))

(cl:ensure-generic-function 'EPS_control_state-val :lambda-list '(m))
(cl:defmethod EPS_control_state-val ((m <FB_EAIT_EPS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_package-msg:EPS_control_state-val is deprecated.  Use can_package-msg:EPS_control_state instead.")
  (EPS_control_state m))

(cl:ensure-generic-function 'Steering_angle-val :lambda-list '(m))
(cl:defmethod Steering_angle-val ((m <FB_EAIT_EPS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_package-msg:Steering_angle-val is deprecated.  Use can_package-msg:Steering_angle instead.")
  (Steering_angle m))

(cl:ensure-generic-function 'Control_SW_FB-val :lambda-list '(m))
(cl:defmethod Control_SW_FB-val ((m <FB_EAIT_EPS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_package-msg:Control_SW_FB-val is deprecated.  Use can_package-msg:Control_SW_FB instead.")
  (Control_SW_FB m))

(cl:ensure-generic-function 'Str_Tq_1-val :lambda-list '(m))
(cl:defmethod Str_Tq_1-val ((m <FB_EAIT_EPS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_package-msg:Str_Tq_1-val is deprecated.  Use can_package-msg:Str_Tq_1 instead.")
  (Str_Tq_1 m))

(cl:ensure-generic-function 'Str_Tq_2-val :lambda-list '(m))
(cl:defmethod Str_Tq_2-val ((m <FB_EAIT_EPS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_package-msg:Str_Tq_2-val is deprecated.  Use can_package-msg:Str_Tq_2 instead.")
  (Str_Tq_2 m))

(cl:ensure-generic-function 'FB_alive_count-val :lambda-list '(m))
(cl:defmethod FB_alive_count-val ((m <FB_EAIT_EPS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_package-msg:FB_alive_count-val is deprecated.  Use can_package-msg:FB_alive_count instead.")
  (FB_alive_count m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FB_EAIT_EPS>) ostream)
  "Serializes a message object of type '<FB_EAIT_EPS>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'EPS_En_FB) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Override_state) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EPS_control_state)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Steering_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Control_SW_FB) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Str_Tq_1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Str_Tq_1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Str_Tq_2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Str_Tq_2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'FB_alive_count)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FB_EAIT_EPS>) istream)
  "Deserializes a message object of type '<FB_EAIT_EPS>"
    (cl:setf (cl:slot-value msg 'EPS_En_FB) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'Override_state) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EPS_control_state)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Steering_angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'Control_SW_FB) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Str_Tq_1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Str_Tq_1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Str_Tq_2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Str_Tq_2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'FB_alive_count)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FB_EAIT_EPS>)))
  "Returns string type for a message object of type '<FB_EAIT_EPS>"
  "can_package/FB_EAIT_EPS")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FB_EAIT_EPS)))
  "Returns string type for a message object of type 'FB_EAIT_EPS"
  "can_package/FB_EAIT_EPS")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FB_EAIT_EPS>)))
  "Returns md5sum for a message object of type '<FB_EAIT_EPS>"
  "b0fbecc9edcbb9cae7095ad825588218")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FB_EAIT_EPS)))
  "Returns md5sum for a message object of type 'FB_EAIT_EPS"
  "b0fbecc9edcbb9cae7095ad825588218")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FB_EAIT_EPS>)))
  "Returns full string definition for message of type '<FB_EAIT_EPS>"
  (cl:format cl:nil "~%bool EPS_En_FB          # 4|1@1+ (1,0) [0|1]~%bool Override_state     # 7|1@1+ (1,0) [0|1]~%uint8 EPS_control_state # 0|4@1+ (1,0) [0|10]~%float32 Steering_angle  # 8|16@1- (0.1,0) [-540|540] deg~%bool Control_SW_FB      # 5|1@1+ (1,0) [0|1]~%uint16 Str_Tq_1        # 24|13@1+ (0.01,-20.48) [-20.48|61.43]~%uint16 Str_Tq_2        # 40|12@1+ (0.1,-204.8) [-204.8|204.7]~%uint8 FB_alive_count    # 56|8@1+ (1,0) [0|255]~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FB_EAIT_EPS)))
  "Returns full string definition for message of type 'FB_EAIT_EPS"
  (cl:format cl:nil "~%bool EPS_En_FB          # 4|1@1+ (1,0) [0|1]~%bool Override_state     # 7|1@1+ (1,0) [0|1]~%uint8 EPS_control_state # 0|4@1+ (1,0) [0|10]~%float32 Steering_angle  # 8|16@1- (0.1,0) [-540|540] deg~%bool Control_SW_FB      # 5|1@1+ (1,0) [0|1]~%uint16 Str_Tq_1        # 24|13@1+ (0.01,-20.48) [-20.48|61.43]~%uint16 Str_Tq_2        # 40|12@1+ (0.1,-204.8) [-204.8|204.7]~%uint8 FB_alive_count    # 56|8@1+ (1,0) [0|255]~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FB_EAIT_EPS>))
  (cl:+ 0
     1
     1
     1
     4
     1
     2
     2
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FB_EAIT_EPS>))
  "Converts a ROS message object to a list"
  (cl:list 'FB_EAIT_EPS
    (cl:cons ':EPS_En_FB (EPS_En_FB msg))
    (cl:cons ':Override_state (Override_state msg))
    (cl:cons ':EPS_control_state (EPS_control_state msg))
    (cl:cons ':Steering_angle (Steering_angle msg))
    (cl:cons ':Control_SW_FB (Control_SW_FB msg))
    (cl:cons ':Str_Tq_1 (Str_Tq_1 msg))
    (cl:cons ':Str_Tq_2 (Str_Tq_2 msg))
    (cl:cons ':FB_alive_count (FB_alive_count msg))
))
