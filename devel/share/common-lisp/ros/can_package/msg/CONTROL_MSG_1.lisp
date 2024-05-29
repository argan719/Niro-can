; Auto-generated. Do not edit!


(cl:in-package can_package-msg)


;//! \htmlinclude CONTROL_MSG_1.msg.html

(cl:defclass <CONTROL_MSG_1> (roslisp-msg-protocol:ros-message)
  ((ControlSW
    :reader ControlSW
    :initarg :ControlSW
    :type cl:boolean
    :initform cl:nil)
   (EPS_En
    :reader EPS_En
    :initarg :EPS_En
    :type cl:boolean
    :initform cl:nil)
   (SCC_En
    :reader SCC_En
    :initarg :SCC_En
    :type cl:boolean
    :initform cl:nil)
   (AEB_Act
    :reader AEB_Act
    :initarg :AEB_Act
    :type cl:boolean
    :initform cl:nil)
   (EPS_Interval
    :reader EPS_Interval
    :initarg :EPS_Interval
    :type cl:fixnum
    :initform 0)
   (AEB_decel_value
    :reader AEB_decel_value
    :initarg :AEB_decel_value
    :type cl:fixnum
    :initform 0)
   (Alive_count
    :reader Alive_count
    :initarg :Alive_count
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CONTROL_MSG_1 (<CONTROL_MSG_1>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CONTROL_MSG_1>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CONTROL_MSG_1)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name can_package-msg:<CONTROL_MSG_1> is deprecated: use can_package-msg:CONTROL_MSG_1 instead.")))

(cl:ensure-generic-function 'ControlSW-val :lambda-list '(m))
(cl:defmethod ControlSW-val ((m <CONTROL_MSG_1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_package-msg:ControlSW-val is deprecated.  Use can_package-msg:ControlSW instead.")
  (ControlSW m))

(cl:ensure-generic-function 'EPS_En-val :lambda-list '(m))
(cl:defmethod EPS_En-val ((m <CONTROL_MSG_1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_package-msg:EPS_En-val is deprecated.  Use can_package-msg:EPS_En instead.")
  (EPS_En m))

(cl:ensure-generic-function 'SCC_En-val :lambda-list '(m))
(cl:defmethod SCC_En-val ((m <CONTROL_MSG_1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_package-msg:SCC_En-val is deprecated.  Use can_package-msg:SCC_En instead.")
  (SCC_En m))

(cl:ensure-generic-function 'AEB_Act-val :lambda-list '(m))
(cl:defmethod AEB_Act-val ((m <CONTROL_MSG_1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_package-msg:AEB_Act-val is deprecated.  Use can_package-msg:AEB_Act instead.")
  (AEB_Act m))

(cl:ensure-generic-function 'EPS_Interval-val :lambda-list '(m))
(cl:defmethod EPS_Interval-val ((m <CONTROL_MSG_1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_package-msg:EPS_Interval-val is deprecated.  Use can_package-msg:EPS_Interval instead.")
  (EPS_Interval m))

(cl:ensure-generic-function 'AEB_decel_value-val :lambda-list '(m))
(cl:defmethod AEB_decel_value-val ((m <CONTROL_MSG_1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_package-msg:AEB_decel_value-val is deprecated.  Use can_package-msg:AEB_decel_value instead.")
  (AEB_decel_value m))

(cl:ensure-generic-function 'Alive_count-val :lambda-list '(m))
(cl:defmethod Alive_count-val ((m <CONTROL_MSG_1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_package-msg:Alive_count-val is deprecated.  Use can_package-msg:Alive_count instead.")
  (Alive_count m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CONTROL_MSG_1>) ostream)
  "Serializes a message object of type '<CONTROL_MSG_1>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ControlSW) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'EPS_En) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'SCC_En) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'AEB_Act) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EPS_Interval)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'AEB_decel_value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Alive_count)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CONTROL_MSG_1>) istream)
  "Deserializes a message object of type '<CONTROL_MSG_1>"
    (cl:setf (cl:slot-value msg 'ControlSW) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'EPS_En) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'SCC_En) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'AEB_Act) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EPS_Interval)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'AEB_decel_value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Alive_count)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CONTROL_MSG_1>)))
  "Returns string type for a message object of type '<CONTROL_MSG_1>"
  "can_package/CONTROL_MSG_1")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CONTROL_MSG_1)))
  "Returns string type for a message object of type 'CONTROL_MSG_1"
  "can_package/CONTROL_MSG_1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CONTROL_MSG_1>)))
  "Returns md5sum for a message object of type '<CONTROL_MSG_1>"
  "476713e91b4fe704c7741061e3ed1316")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CONTROL_MSG_1)))
  "Returns md5sum for a message object of type 'CONTROL_MSG_1"
  "476713e91b4fe704c7741061e3ed1316")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CONTROL_MSG_1>)))
  "Returns full string definition for message of type '<CONTROL_MSG_1>"
  (cl:format cl:nil "bool ControlSW~%bool EPS_En~%bool SCC_En~%bool AEB_Act~%uint8 EPS_Interval ~%uint8 AEB_decel_value~%uint8 Alive_count~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CONTROL_MSG_1)))
  "Returns full string definition for message of type 'CONTROL_MSG_1"
  (cl:format cl:nil "bool ControlSW~%bool EPS_En~%bool SCC_En~%bool AEB_Act~%uint8 EPS_Interval ~%uint8 AEB_decel_value~%uint8 Alive_count~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CONTROL_MSG_1>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CONTROL_MSG_1>))
  "Converts a ROS message object to a list"
  (cl:list 'CONTROL_MSG_1
    (cl:cons ':ControlSW (ControlSW msg))
    (cl:cons ':EPS_En (EPS_En msg))
    (cl:cons ':SCC_En (SCC_En msg))
    (cl:cons ':AEB_Act (AEB_Act msg))
    (cl:cons ':EPS_Interval (EPS_Interval msg))
    (cl:cons ':AEB_decel_value (AEB_decel_value msg))
    (cl:cons ':Alive_count (Alive_count msg))
))
