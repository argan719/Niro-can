; Auto-generated. Do not edit!


(cl:in-package can_package-msg)


;//! \htmlinclude FB_EAIT_SCC.msg.html

(cl:defclass <FB_EAIT_SCC> (roslisp-msg-protocol:ros-message)
  ((ACC_control_state
    :reader ACC_control_state
    :initarg :ACC_control_state
    :type cl:fixnum
    :initform 0)
   (EPS_En_FB
    :reader EPS_En_FB
    :initarg :EPS_En_FB
    :type cl:boolean
    :initform cl:nil)
   (Override_ACC_state
    :reader Override_ACC_state
    :initarg :Override_ACC_state
    :type cl:boolean
    :initform cl:nil)
   (Override_BRK_state
    :reader Override_BRK_state
    :initarg :Override_BRK_state
    :type cl:boolean
    :initform cl:nil)
   (Vehicle_speed
    :reader Vehicle_speed
    :initarg :Vehicle_speed
    :type cl:fixnum
    :initform 0)
   (AEB_state
    :reader AEB_state
    :initarg :AEB_state
    :type cl:boolean
    :initform cl:nil)
   (Long_Accel
    :reader Long_Accel
    :initarg :Long_Accel
    :type cl:float
    :initform 0.0)
   (Gear_Disp
    :reader Gear_Disp
    :initarg :Gear_Disp
    :type cl:fixnum
    :initform 0))
)

(cl:defclass FB_EAIT_SCC (<FB_EAIT_SCC>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FB_EAIT_SCC>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FB_EAIT_SCC)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name can_package-msg:<FB_EAIT_SCC> is deprecated: use can_package-msg:FB_EAIT_SCC instead.")))

(cl:ensure-generic-function 'ACC_control_state-val :lambda-list '(m))
(cl:defmethod ACC_control_state-val ((m <FB_EAIT_SCC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_package-msg:ACC_control_state-val is deprecated.  Use can_package-msg:ACC_control_state instead.")
  (ACC_control_state m))

(cl:ensure-generic-function 'EPS_En_FB-val :lambda-list '(m))
(cl:defmethod EPS_En_FB-val ((m <FB_EAIT_SCC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_package-msg:EPS_En_FB-val is deprecated.  Use can_package-msg:EPS_En_FB instead.")
  (EPS_En_FB m))

(cl:ensure-generic-function 'Override_ACC_state-val :lambda-list '(m))
(cl:defmethod Override_ACC_state-val ((m <FB_EAIT_SCC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_package-msg:Override_ACC_state-val is deprecated.  Use can_package-msg:Override_ACC_state instead.")
  (Override_ACC_state m))

(cl:ensure-generic-function 'Override_BRK_state-val :lambda-list '(m))
(cl:defmethod Override_BRK_state-val ((m <FB_EAIT_SCC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_package-msg:Override_BRK_state-val is deprecated.  Use can_package-msg:Override_BRK_state instead.")
  (Override_BRK_state m))

(cl:ensure-generic-function 'Vehicle_speed-val :lambda-list '(m))
(cl:defmethod Vehicle_speed-val ((m <FB_EAIT_SCC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_package-msg:Vehicle_speed-val is deprecated.  Use can_package-msg:Vehicle_speed instead.")
  (Vehicle_speed m))

(cl:ensure-generic-function 'AEB_state-val :lambda-list '(m))
(cl:defmethod AEB_state-val ((m <FB_EAIT_SCC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_package-msg:AEB_state-val is deprecated.  Use can_package-msg:AEB_state instead.")
  (AEB_state m))

(cl:ensure-generic-function 'Long_Accel-val :lambda-list '(m))
(cl:defmethod Long_Accel-val ((m <FB_EAIT_SCC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_package-msg:Long_Accel-val is deprecated.  Use can_package-msg:Long_Accel instead.")
  (Long_Accel m))

(cl:ensure-generic-function 'Gear_Disp-val :lambda-list '(m))
(cl:defmethod Gear_Disp-val ((m <FB_EAIT_SCC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_package-msg:Gear_Disp-val is deprecated.  Use can_package-msg:Gear_Disp instead.")
  (Gear_Disp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FB_EAIT_SCC>) ostream)
  "Serializes a message object of type '<FB_EAIT_SCC>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ACC_control_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'EPS_En_FB) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Override_ACC_state) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Override_BRK_state) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Vehicle_speed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'AEB_state) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Long_Accel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Gear_Disp)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FB_EAIT_SCC>) istream)
  "Deserializes a message object of type '<FB_EAIT_SCC>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ACC_control_state)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'EPS_En_FB) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'Override_ACC_state) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'Override_BRK_state) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Vehicle_speed)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'AEB_state) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Long_Accel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Gear_Disp)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FB_EAIT_SCC>)))
  "Returns string type for a message object of type '<FB_EAIT_SCC>"
  "can_package/FB_EAIT_SCC")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FB_EAIT_SCC)))
  "Returns string type for a message object of type 'FB_EAIT_SCC"
  "can_package/FB_EAIT_SCC")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FB_EAIT_SCC>)))
  "Returns md5sum for a message object of type '<FB_EAIT_SCC>"
  "c259b215cb428509acd187f1b6939bc1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FB_EAIT_SCC)))
  "Returns md5sum for a message object of type 'FB_EAIT_SCC"
  "c259b215cb428509acd187f1b6939bc1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FB_EAIT_SCC>)))
  "Returns full string definition for message of type '<FB_EAIT_SCC>"
  (cl:format cl:nil "~%uint8 ACC_control_state  # 0|4@1+ (1,0) [0|10]~%bool EPS_En_FB           # 4|1@1+ (1,0) [0|1]~%bool Override_ACC_state  # 6|1@1+ (1,0) [0|1]~%bool Override_BRK_state  # 7|1@1+ (1,0) [0|1]~%uint8 Vehicle_speed      # 8|8@1+ (1,0) [0|255] kph~%bool AEB_state           # 5|1@1+ (1,0) [0|1]~%float32 Long_Accel       # 16|16@1+ (0.000127465,-4.17677312) [-4.17677312|4.176645655] m/s^2~%uint8 Gear_Disp          # 32|4@1+ (1,0) [0|15]~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FB_EAIT_SCC)))
  "Returns full string definition for message of type 'FB_EAIT_SCC"
  (cl:format cl:nil "~%uint8 ACC_control_state  # 0|4@1+ (1,0) [0|10]~%bool EPS_En_FB           # 4|1@1+ (1,0) [0|1]~%bool Override_ACC_state  # 6|1@1+ (1,0) [0|1]~%bool Override_BRK_state  # 7|1@1+ (1,0) [0|1]~%uint8 Vehicle_speed      # 8|8@1+ (1,0) [0|255] kph~%bool AEB_state           # 5|1@1+ (1,0) [0|1]~%float32 Long_Accel       # 16|16@1+ (0.000127465,-4.17677312) [-4.17677312|4.176645655] m/s^2~%uint8 Gear_Disp          # 32|4@1+ (1,0) [0|15]~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FB_EAIT_SCC>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FB_EAIT_SCC>))
  "Converts a ROS message object to a list"
  (cl:list 'FB_EAIT_SCC
    (cl:cons ':ACC_control_state (ACC_control_state msg))
    (cl:cons ':EPS_En_FB (EPS_En_FB msg))
    (cl:cons ':Override_ACC_state (Override_ACC_state msg))
    (cl:cons ':Override_BRK_state (Override_BRK_state msg))
    (cl:cons ':Vehicle_speed (Vehicle_speed msg))
    (cl:cons ':AEB_state (AEB_state msg))
    (cl:cons ':Long_Accel (Long_Accel msg))
    (cl:cons ':Gear_Disp (Gear_Disp msg))
))
