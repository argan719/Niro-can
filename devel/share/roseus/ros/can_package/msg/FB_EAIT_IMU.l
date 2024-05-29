;; Auto-generated. Do not edit!


(when (boundp 'can_package::FB_EAIT_IMU)
  (if (not (find-package "CAN_PACKAGE"))
    (make-package "CAN_PACKAGE"))
  (shadow 'FB_EAIT_IMU (find-package "CAN_PACKAGE")))
(unless (find-package "CAN_PACKAGE::FB_EAIT_IMU")
  (make-package "CAN_PACKAGE::FB_EAIT_IMU"))

(in-package "ROS")
;;//! \htmlinclude FB_EAIT_IMU.msg.html


(defclass can_package::FB_EAIT_IMU
  :super ros::object
  :slots (_Lat_Accel _Yaw_Rate _Long_Accel ))

(defmethod can_package::FB_EAIT_IMU
  (:init
   (&key
    ((:Lat_Accel __Lat_Accel) 0.0)
    ((:Yaw_Rate __Yaw_Rate) 0.0)
    ((:Long_Accel __Long_Accel) 0.0)
    )
   (send-super :init)
   (setq _Lat_Accel (float __Lat_Accel))
   (setq _Yaw_Rate (float __Yaw_Rate))
   (setq _Long_Accel (float __Long_Accel))
   self)
  (:Lat_Accel
   (&optional __Lat_Accel)
   (if __Lat_Accel (setq _Lat_Accel __Lat_Accel)) _Lat_Accel)
  (:Yaw_Rate
   (&optional __Yaw_Rate)
   (if __Yaw_Rate (setq _Yaw_Rate __Yaw_Rate)) _Yaw_Rate)
  (:Long_Accel
   (&optional __Long_Accel)
   (if __Long_Accel (setq _Long_Accel __Long_Accel)) _Long_Accel)
  (:serialization-length
   ()
   (+
    ;; float32 _Lat_Accel
    4
    ;; float32 _Yaw_Rate
    4
    ;; float32 _Long_Accel
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _Lat_Accel
       (sys::poke _Lat_Accel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Yaw_Rate
       (sys::poke _Yaw_Rate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Long_Accel
       (sys::poke _Long_Accel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _Lat_Accel
     (setq _Lat_Accel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Yaw_Rate
     (setq _Yaw_Rate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Long_Accel
     (setq _Long_Accel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get can_package::FB_EAIT_IMU :md5sum-) "5a954aa3b789111970bbde7390205462")
(setf (get can_package::FB_EAIT_IMU :datatype-) "can_package/FB_EAIT_IMU")
(setf (get can_package::FB_EAIT_IMU :definition-)
      "float32 Lat_Accel    # 16|16@1+ (0.000127564,-4.17677312) [-4.17677312|4.18313362] m/s^2
float32 Yaw_Rate     # 32|16@1+ (0.005,-163.84) [-163.84|163.835] deg/s
float32 Long_Accel   # 0|16@1+ (0.001249157,-40.9323) [-40.9323|4.176645655] m/s^2

")



(provide :can_package/FB_EAIT_IMU "5a954aa3b789111970bbde7390205462")


