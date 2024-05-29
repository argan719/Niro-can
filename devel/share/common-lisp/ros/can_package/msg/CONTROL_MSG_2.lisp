; Auto-generated. Do not edit!


(cl:in-package can_package-msg)


;//! \htmlinclude CONTROL_MSG_2.msg.html

(cl:defclass <CONTROL_MSG_2> (roslisp-msg-protocol:ros-message)
  ((EPS_command
    :reader EPS_command
    :initarg :EPS_command
    :type cl:fixnum
    :initform 0)
   (SCC_command
    :reader SCC_command
    :initarg :SCC_command
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CONTROL_MSG_2 (<CONTROL_MSG_2>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CONTROL_MSG_2>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CONTROL_MSG_2)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name can_package-msg:<CONTROL_MSG_2> is deprecated: use can_package-msg:CONTROL_MSG_2 instead.")))

(cl:ensure-generic-function 'EPS_command-val :lambda-list '(m))
(cl:defmethod EPS_command-val ((m <CONTROL_MSG_2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_package-msg:EPS_command-val is deprecated.  Use can_package-msg:EPS_command instead.")
  (EPS_command m))

(cl:ensure-generic-function 'SCC_command-val :lambda-list '(m))
(cl:defmethod SCC_command-val ((m <CONTROL_MSG_2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_package-msg:SCC_command-val is deprecated.  Use can_package-msg:SCC_command instead.")
  (SCC_command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CONTROL_MSG_2>) ostream)
  "Serializes a message object of type '<CONTROL_MSG_2>"
  (cl:let* ((signed (cl:slot-value msg 'EPS_command)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SCC_command)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'SCC_command)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CONTROL_MSG_2>) istream)
  "Deserializes a message object of type '<CONTROL_MSG_2>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'EPS_command) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SCC_command)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'SCC_command)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CONTROL_MSG_2>)))
  "Returns string type for a message object of type '<CONTROL_MSG_2>"
  "can_package/CONTROL_MSG_2")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CONTROL_MSG_2)))
  "Returns string type for a message object of type 'CONTROL_MSG_2"
  "can_package/CONTROL_MSG_2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CONTROL_MSG_2>)))
  "Returns md5sum for a message object of type '<CONTROL_MSG_2>"
  "7868707315b8b995234d9673967cb406")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CONTROL_MSG_2)))
  "Returns md5sum for a message object of type 'CONTROL_MSG_2"
  "7868707315b8b995234d9673967cb406")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CONTROL_MSG_2>)))
  "Returns full string definition for message of type '<CONTROL_MSG_2>"
  (cl:format cl:nil "int16 EPS_command~%uint16 SCC_command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CONTROL_MSG_2)))
  "Returns full string definition for message of type 'CONTROL_MSG_2"
  (cl:format cl:nil "int16 EPS_command~%uint16 SCC_command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CONTROL_MSG_2>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CONTROL_MSG_2>))
  "Converts a ROS message object to a list"
  (cl:list 'CONTROL_MSG_2
    (cl:cons ':EPS_command (EPS_command msg))
    (cl:cons ':SCC_command (SCC_command msg))
))
