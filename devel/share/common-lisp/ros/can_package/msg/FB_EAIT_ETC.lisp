; Auto-generated. Do not edit!


(cl:in-package can_package-msg)


;//! \htmlinclude FB_EAIT_ETC.msg.html

(cl:defclass <FB_EAIT_ETC> (roslisp-msg-protocol:ros-message)
  ((acc_pedal_percent
    :reader acc_pedal_percent
    :initarg :acc_pedal_percent
    :type cl:fixnum
    :initform 0)
   (brk_pedal_percent
    :reader brk_pedal_percent
    :initarg :brk_pedal_percent
    :type cl:fixnum
    :initform 0)
   (turn_sig
    :reader turn_sig
    :initarg :turn_sig
    :type cl:fixnum
    :initform 0)
   (LCS_button_sig
    :reader LCS_button_sig
    :initarg :LCS_button_sig
    :type cl:boolean
    :initform cl:nil)
   (Limit_sig
    :reader Limit_sig
    :initarg :Limit_sig
    :type cl:boolean
    :initform cl:nil)
   (Cruise_buttons_sig
    :reader Cruise_buttons_sig
    :initarg :Cruise_buttons_sig
    :type cl:fixnum
    :initform 0))
)

(cl:defclass FB_EAIT_ETC (<FB_EAIT_ETC>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FB_EAIT_ETC>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FB_EAIT_ETC)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name can_package-msg:<FB_EAIT_ETC> is deprecated: use can_package-msg:FB_EAIT_ETC instead.")))

(cl:ensure-generic-function 'acc_pedal_percent-val :lambda-list '(m))
(cl:defmethod acc_pedal_percent-val ((m <FB_EAIT_ETC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_package-msg:acc_pedal_percent-val is deprecated.  Use can_package-msg:acc_pedal_percent instead.")
  (acc_pedal_percent m))

(cl:ensure-generic-function 'brk_pedal_percent-val :lambda-list '(m))
(cl:defmethod brk_pedal_percent-val ((m <FB_EAIT_ETC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_package-msg:brk_pedal_percent-val is deprecated.  Use can_package-msg:brk_pedal_percent instead.")
  (brk_pedal_percent m))

(cl:ensure-generic-function 'turn_sig-val :lambda-list '(m))
(cl:defmethod turn_sig-val ((m <FB_EAIT_ETC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_package-msg:turn_sig-val is deprecated.  Use can_package-msg:turn_sig instead.")
  (turn_sig m))

(cl:ensure-generic-function 'LCS_button_sig-val :lambda-list '(m))
(cl:defmethod LCS_button_sig-val ((m <FB_EAIT_ETC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_package-msg:LCS_button_sig-val is deprecated.  Use can_package-msg:LCS_button_sig instead.")
  (LCS_button_sig m))

(cl:ensure-generic-function 'Limit_sig-val :lambda-list '(m))
(cl:defmethod Limit_sig-val ((m <FB_EAIT_ETC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_package-msg:Limit_sig-val is deprecated.  Use can_package-msg:Limit_sig instead.")
  (Limit_sig m))

(cl:ensure-generic-function 'Cruise_buttons_sig-val :lambda-list '(m))
(cl:defmethod Cruise_buttons_sig-val ((m <FB_EAIT_ETC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_package-msg:Cruise_buttons_sig-val is deprecated.  Use can_package-msg:Cruise_buttons_sig instead.")
  (Cruise_buttons_sig m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FB_EAIT_ETC>) ostream)
  "Serializes a message object of type '<FB_EAIT_ETC>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'acc_pedal_percent)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'acc_pedal_percent)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'brk_pedal_percent)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'brk_pedal_percent)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'turn_sig)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'LCS_button_sig) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Limit_sig) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Cruise_buttons_sig)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FB_EAIT_ETC>) istream)
  "Deserializes a message object of type '<FB_EAIT_ETC>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'acc_pedal_percent)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'acc_pedal_percent)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'brk_pedal_percent)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'brk_pedal_percent)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'turn_sig)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'LCS_button_sig) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'Limit_sig) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Cruise_buttons_sig)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FB_EAIT_ETC>)))
  "Returns string type for a message object of type '<FB_EAIT_ETC>"
  "can_package/FB_EAIT_ETC")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FB_EAIT_ETC)))
  "Returns string type for a message object of type 'FB_EAIT_ETC"
  "can_package/FB_EAIT_ETC")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FB_EAIT_ETC>)))
  "Returns md5sum for a message object of type '<FB_EAIT_ETC>"
  "adf0c54b44ed0a214b3be3c2060de9bb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FB_EAIT_ETC)))
  "Returns md5sum for a message object of type 'FB_EAIT_ETC"
  "adf0c54b44ed0a214b3be3c2060de9bb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FB_EAIT_ETC>)))
  "Returns full string definition for message of type '<FB_EAIT_ETC>"
  (cl:format cl:nil "~%uint16 acc_pedal_percent     # 0|16@1+ (1,0) [0|2000] %~%uint16 brk_pedal_percent     # 16|16@1+ (1,0) [0|2000] %~%uint8 turn_sig               # 32|8@1+ (1,0) [0|0]~%bool LCS_button_sig          # 47|1@1+ (1,0) [0|0]~%bool Limit_sig               # 45|1@1+ (1,0) [0|0]~%uint8 Cruise_buttons_sig     # 40|4@1+ (1,0) [0|0]~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FB_EAIT_ETC)))
  "Returns full string definition for message of type 'FB_EAIT_ETC"
  (cl:format cl:nil "~%uint16 acc_pedal_percent     # 0|16@1+ (1,0) [0|2000] %~%uint16 brk_pedal_percent     # 16|16@1+ (1,0) [0|2000] %~%uint8 turn_sig               # 32|8@1+ (1,0) [0|0]~%bool LCS_button_sig          # 47|1@1+ (1,0) [0|0]~%bool Limit_sig               # 45|1@1+ (1,0) [0|0]~%uint8 Cruise_buttons_sig     # 40|4@1+ (1,0) [0|0]~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FB_EAIT_ETC>))
  (cl:+ 0
     2
     2
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FB_EAIT_ETC>))
  "Converts a ROS message object to a list"
  (cl:list 'FB_EAIT_ETC
    (cl:cons ':acc_pedal_percent (acc_pedal_percent msg))
    (cl:cons ':brk_pedal_percent (brk_pedal_percent msg))
    (cl:cons ':turn_sig (turn_sig msg))
    (cl:cons ':LCS_button_sig (LCS_button_sig msg))
    (cl:cons ':Limit_sig (Limit_sig msg))
    (cl:cons ':Cruise_buttons_sig (Cruise_buttons_sig msg))
))
