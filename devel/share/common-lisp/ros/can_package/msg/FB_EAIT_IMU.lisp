; Auto-generated. Do not edit!


(cl:in-package can_package-msg)


;//! \htmlinclude FB_EAIT_IMU.msg.html

(cl:defclass <FB_EAIT_IMU> (roslisp-msg-protocol:ros-message)
  ((Lat_Accel
    :reader Lat_Accel
    :initarg :Lat_Accel
    :type cl:float
    :initform 0.0)
   (Yaw_Rate
    :reader Yaw_Rate
    :initarg :Yaw_Rate
    :type cl:float
    :initform 0.0)
   (Long_Accel
    :reader Long_Accel
    :initarg :Long_Accel
    :type cl:float
    :initform 0.0))
)

(cl:defclass FB_EAIT_IMU (<FB_EAIT_IMU>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FB_EAIT_IMU>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FB_EAIT_IMU)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name can_package-msg:<FB_EAIT_IMU> is deprecated: use can_package-msg:FB_EAIT_IMU instead.")))

(cl:ensure-generic-function 'Lat_Accel-val :lambda-list '(m))
(cl:defmethod Lat_Accel-val ((m <FB_EAIT_IMU>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_package-msg:Lat_Accel-val is deprecated.  Use can_package-msg:Lat_Accel instead.")
  (Lat_Accel m))

(cl:ensure-generic-function 'Yaw_Rate-val :lambda-list '(m))
(cl:defmethod Yaw_Rate-val ((m <FB_EAIT_IMU>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_package-msg:Yaw_Rate-val is deprecated.  Use can_package-msg:Yaw_Rate instead.")
  (Yaw_Rate m))

(cl:ensure-generic-function 'Long_Accel-val :lambda-list '(m))
(cl:defmethod Long_Accel-val ((m <FB_EAIT_IMU>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_package-msg:Long_Accel-val is deprecated.  Use can_package-msg:Long_Accel instead.")
  (Long_Accel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FB_EAIT_IMU>) ostream)
  "Serializes a message object of type '<FB_EAIT_IMU>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Lat_Accel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Yaw_Rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Long_Accel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FB_EAIT_IMU>) istream)
  "Deserializes a message object of type '<FB_EAIT_IMU>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Lat_Accel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Yaw_Rate) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Long_Accel) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FB_EAIT_IMU>)))
  "Returns string type for a message object of type '<FB_EAIT_IMU>"
  "can_package/FB_EAIT_IMU")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FB_EAIT_IMU)))
  "Returns string type for a message object of type 'FB_EAIT_IMU"
  "can_package/FB_EAIT_IMU")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FB_EAIT_IMU>)))
  "Returns md5sum for a message object of type '<FB_EAIT_IMU>"
  "5a954aa3b789111970bbde7390205462")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FB_EAIT_IMU)))
  "Returns md5sum for a message object of type 'FB_EAIT_IMU"
  "5a954aa3b789111970bbde7390205462")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FB_EAIT_IMU>)))
  "Returns full string definition for message of type '<FB_EAIT_IMU>"
  (cl:format cl:nil "float32 Lat_Accel    # 16|16@1+ (0.000127564,-4.17677312) [-4.17677312|4.18313362] m/s^2~%float32 Yaw_Rate     # 32|16@1+ (0.005,-163.84) [-163.84|163.835] deg/s~%float32 Long_Accel   # 0|16@1+ (0.001249157,-40.9323) [-40.9323|4.176645655] m/s^2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FB_EAIT_IMU)))
  "Returns full string definition for message of type 'FB_EAIT_IMU"
  (cl:format cl:nil "float32 Lat_Accel    # 16|16@1+ (0.000127564,-4.17677312) [-4.17677312|4.18313362] m/s^2~%float32 Yaw_Rate     # 32|16@1+ (0.005,-163.84) [-163.84|163.835] deg/s~%float32 Long_Accel   # 0|16@1+ (0.001249157,-40.9323) [-40.9323|4.176645655] m/s^2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FB_EAIT_IMU>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FB_EAIT_IMU>))
  "Converts a ROS message object to a list"
  (cl:list 'FB_EAIT_IMU
    (cl:cons ':Lat_Accel (Lat_Accel msg))
    (cl:cons ':Yaw_Rate (Yaw_Rate msg))
    (cl:cons ':Long_Accel (Long_Accel msg))
))
