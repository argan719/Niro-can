;; Auto-generated. Do not edit!


(when (boundp 'can_package::CONTROL_MSG)
  (if (not (find-package "CAN_PACKAGE"))
    (make-package "CAN_PACKAGE"))
  (shadow 'CONTROL_MSG (find-package "CAN_PACKAGE")))
(unless (find-package "CAN_PACKAGE::CONTROL_MSG")
  (make-package "CAN_PACKAGE::CONTROL_MSG"))

(in-package "ROS")
;;//! \htmlinclude CONTROL_MSG.msg.html


(defclass can_package::CONTROL_MSG
  :super ros::object
  :slots (_EPS_en _ControlSW _EPS_Interval _SCC_En _AEB_Act _AEB_decel_value _Alive_count _SCC_value _EPS_value ))

(defmethod can_package::CONTROL_MSG
  (:init
   (&key
    ((:EPS_en __EPS_en) 0)
    ((:ControlSW __ControlSW) 0)
    ((:EPS_Interval __EPS_Interval) 0)
    ((:SCC_En __SCC_En) 0)
    ((:AEB_Act __AEB_Act) 0)
    ((:AEB_decel_value __AEB_decel_value) 0)
    ((:Alive_count __Alive_count) 0)
    ((:SCC_value __SCC_value) 0.0)
    ((:EPS_value __EPS_value) 0.0)
    )
   (send-super :init)
   (setq _EPS_en (round __EPS_en))
   (setq _ControlSW (round __ControlSW))
   (setq _EPS_Interval (round __EPS_Interval))
   (setq _SCC_En (round __SCC_En))
   (setq _AEB_Act (round __AEB_Act))
   (setq _AEB_decel_value (round __AEB_decel_value))
   (setq _Alive_count (round __Alive_count))
   (setq _SCC_value (float __SCC_value))
   (setq _EPS_value (float __EPS_value))
   self)
  (:EPS_en
   (&optional __EPS_en)
   (if __EPS_en (setq _EPS_en __EPS_en)) _EPS_en)
  (:ControlSW
   (&optional __ControlSW)
   (if __ControlSW (setq _ControlSW __ControlSW)) _ControlSW)
  (:EPS_Interval
   (&optional __EPS_Interval)
   (if __EPS_Interval (setq _EPS_Interval __EPS_Interval)) _EPS_Interval)
  (:SCC_En
   (&optional __SCC_En)
   (if __SCC_En (setq _SCC_En __SCC_En)) _SCC_En)
  (:AEB_Act
   (&optional __AEB_Act)
   (if __AEB_Act (setq _AEB_Act __AEB_Act)) _AEB_Act)
  (:AEB_decel_value
   (&optional __AEB_decel_value)
   (if __AEB_decel_value (setq _AEB_decel_value __AEB_decel_value)) _AEB_decel_value)
  (:Alive_count
   (&optional __Alive_count)
   (if __Alive_count (setq _Alive_count __Alive_count)) _Alive_count)
  (:SCC_value
   (&optional __SCC_value)
   (if __SCC_value (setq _SCC_value __SCC_value)) _SCC_value)
  (:EPS_value
   (&optional __EPS_value)
   (if __EPS_value (setq _EPS_value __EPS_value)) _EPS_value)
  (:serialization-length
   ()
   (+
    ;; uint8 _EPS_en
    1
    ;; uint8 _ControlSW
    1
    ;; uint8 _EPS_Interval
    1
    ;; uint8 _SCC_En
    1
    ;; uint8 _AEB_Act
    1
    ;; uint8 _AEB_decel_value
    1
    ;; uint8 _Alive_count
    1
    ;; float32 _SCC_value
    4
    ;; float32 _EPS_value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _EPS_en
       (write-byte _EPS_en s)
     ;; uint8 _ControlSW
       (write-byte _ControlSW s)
     ;; uint8 _EPS_Interval
       (write-byte _EPS_Interval s)
     ;; uint8 _SCC_En
       (write-byte _SCC_En s)
     ;; uint8 _AEB_Act
       (write-byte _AEB_Act s)
     ;; uint8 _AEB_decel_value
       (write-byte _AEB_decel_value s)
     ;; uint8 _Alive_count
       (write-byte _Alive_count s)
     ;; float32 _SCC_value
       (sys::poke _SCC_value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _EPS_value
       (sys::poke _EPS_value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _EPS_en
     (setq _EPS_en (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _ControlSW
     (setq _ControlSW (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _EPS_Interval
     (setq _EPS_Interval (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _SCC_En
     (setq _SCC_En (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _AEB_Act
     (setq _AEB_Act (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _AEB_decel_value
     (setq _AEB_decel_value (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _Alive_count
     (setq _Alive_count (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _SCC_value
     (setq _SCC_value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _EPS_value
     (setq _EPS_value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get can_package::CONTROL_MSG :md5sum-) "4e1b84ccf5a5c6a0e362e2cdfaeae72d")
(setf (get can_package::CONTROL_MSG :datatype-) "can_package/CONTROL_MSG")
(setf (get can_package::CONTROL_MSG :definition-)
      "uint8 EPS_en  
uint8 ControlSW
uint8 EPS_Interval  
uint8 SCC_En    
uint8 AEB_Act
uint8 AEB_decel_value
uint8 Alive_count
float32 SCC_value
float32 EPS_value

")



(provide :can_package/CONTROL_MSG "4e1b84ccf5a5c6a0e362e2cdfaeae72d")


