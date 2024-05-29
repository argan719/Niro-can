; Auto-generated. Do not edit!


(cl:in-package can_package-msg)


;//! \htmlinclude FB_EAIT_SPD.msg.html

(cl:defclass <FB_EAIT_SPD> (roslisp-msg-protocol:ros-message)
  ((WHL_SPD_FL
    :reader WHL_SPD_FL
    :initarg :WHL_SPD_FL
    :type cl:fixnum
    :initform 0)
   (WHL_SPD_FR
    :reader WHL_SPD_FR
    :initarg :WHL_SPD_FR
    :type cl:fixnum
    :initform 0)
   (WHL_SPD_RL
    :reader WHL_SPD_RL
    :initarg :WHL_SPD_RL
    :type cl:fixnum
    :initform 0)
   (WHL_SPD_RR
    :reader WHL_SPD_RR
    :initarg :WHL_SPD_RR
    :type cl:fixnum
    :initform 0))
)

(cl:defclass FB_EAIT_SPD (<FB_EAIT_SPD>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FB_EAIT_SPD>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FB_EAIT_SPD)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name can_package-msg:<FB_EAIT_SPD> is deprecated: use can_package-msg:FB_EAIT_SPD instead.")))

(cl:ensure-generic-function 'WHL_SPD_FL-val :lambda-list '(m))
(cl:defmethod WHL_SPD_FL-val ((m <FB_EAIT_SPD>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_package-msg:WHL_SPD_FL-val is deprecated.  Use can_package-msg:WHL_SPD_FL instead.")
  (WHL_SPD_FL m))

(cl:ensure-generic-function 'WHL_SPD_FR-val :lambda-list '(m))
(cl:defmethod WHL_SPD_FR-val ((m <FB_EAIT_SPD>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_package-msg:WHL_SPD_FR-val is deprecated.  Use can_package-msg:WHL_SPD_FR instead.")
  (WHL_SPD_FR m))

(cl:ensure-generic-function 'WHL_SPD_RL-val :lambda-list '(m))
(cl:defmethod WHL_SPD_RL-val ((m <FB_EAIT_SPD>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_package-msg:WHL_SPD_RL-val is deprecated.  Use can_package-msg:WHL_SPD_RL instead.")
  (WHL_SPD_RL m))

(cl:ensure-generic-function 'WHL_SPD_RR-val :lambda-list '(m))
(cl:defmethod WHL_SPD_RR-val ((m <FB_EAIT_SPD>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_package-msg:WHL_SPD_RR-val is deprecated.  Use can_package-msg:WHL_SPD_RR instead.")
  (WHL_SPD_RR m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FB_EAIT_SPD>) ostream)
  "Serializes a message object of type '<FB_EAIT_SPD>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'WHL_SPD_FL)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'WHL_SPD_FL)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'WHL_SPD_FR)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'WHL_SPD_FR)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'WHL_SPD_RL)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'WHL_SPD_RL)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'WHL_SPD_RR)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'WHL_SPD_RR)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FB_EAIT_SPD>) istream)
  "Deserializes a message object of type '<FB_EAIT_SPD>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'WHL_SPD_FL)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'WHL_SPD_FL)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'WHL_SPD_FR)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'WHL_SPD_FR)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'WHL_SPD_RL)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'WHL_SPD_RL)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'WHL_SPD_RR)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'WHL_SPD_RR)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FB_EAIT_SPD>)))
  "Returns string type for a message object of type '<FB_EAIT_SPD>"
  "can_package/FB_EAIT_SPD")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FB_EAIT_SPD)))
  "Returns string type for a message object of type 'FB_EAIT_SPD"
  "can_package/FB_EAIT_SPD")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FB_EAIT_SPD>)))
  "Returns md5sum for a message object of type '<FB_EAIT_SPD>"
  "942f3c288489605fdeb5cae068a7cd8a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FB_EAIT_SPD)))
  "Returns md5sum for a message object of type 'FB_EAIT_SPD"
  "942f3c288489605fdeb5cae068a7cd8a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FB_EAIT_SPD>)))
  "Returns full string definition for message of type '<FB_EAIT_SPD>"
  (cl:format cl:nil "~%uint16 WHL_SPD_FL    # 0|14@1+ (0.03125,0) [0|511.96875]~%uint16 WHL_SPD_FR    # 16|14@1+ (0.03125,0) [0|511.96875]~%uint16 WHL_SPD_RL    # 32|14@1+ (0.03125,0) [0|511.96875]~%uint16 WHL_SPD_RR    # 48|14@1+ (0.03125,0) [0|511.96875]~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FB_EAIT_SPD)))
  "Returns full string definition for message of type 'FB_EAIT_SPD"
  (cl:format cl:nil "~%uint16 WHL_SPD_FL    # 0|14@1+ (0.03125,0) [0|511.96875]~%uint16 WHL_SPD_FR    # 16|14@1+ (0.03125,0) [0|511.96875]~%uint16 WHL_SPD_RL    # 32|14@1+ (0.03125,0) [0|511.96875]~%uint16 WHL_SPD_RR    # 48|14@1+ (0.03125,0) [0|511.96875]~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FB_EAIT_SPD>))
  (cl:+ 0
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FB_EAIT_SPD>))
  "Converts a ROS message object to a list"
  (cl:list 'FB_EAIT_SPD
    (cl:cons ':WHL_SPD_FL (WHL_SPD_FL msg))
    (cl:cons ':WHL_SPD_FR (WHL_SPD_FR msg))
    (cl:cons ':WHL_SPD_RL (WHL_SPD_RL msg))
    (cl:cons ':WHL_SPD_RR (WHL_SPD_RR msg))
))
