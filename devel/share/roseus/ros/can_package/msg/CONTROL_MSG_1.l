;; Auto-generated. Do not edit!


(when (boundp 'can_package::CONTROL_MSG_1)
  (if (not (find-package "CAN_PACKAGE"))
    (make-package "CAN_PACKAGE"))
  (shadow 'CONTROL_MSG_1 (find-package "CAN_PACKAGE")))
(unless (find-package "CAN_PACKAGE::CONTROL_MSG_1")
  (make-package "CAN_PACKAGE::CONTROL_MSG_1"))

(in-package "ROS")
;;//! \htmlinclude CONTROL_MSG_1.msg.html


(defclass can_package::CONTROL_MSG_1
  :super ros::object
  :slots (_ControlSW _EPS_En _SCC_En _AEB_Act _EPS_Interval _AEB_decel_value _Alive_count ))

(defmethod can_package::CONTROL_MSG_1
  (:init
   (&key
    ((:ControlSW __ControlSW) nil)
    ((:EPS_En __EPS_En) nil)
    ((:SCC_En __SCC_En) nil)
    ((:AEB_Act __AEB_Act) nil)
    ((:EPS_Interval __EPS_Interval) 0)
    ((:AEB_decel_value __AEB_decel_value) 0)
    ((:Alive_count __Alive_count) 0)
    )
   (send-super :init)
   (setq _ControlSW __ControlSW)
   (setq _EPS_En __EPS_En)
   (setq _SCC_En __SCC_En)
   (setq _AEB_Act __AEB_Act)
   (setq _EPS_Interval (round __EPS_Interval))
   (setq _AEB_decel_value (round __AEB_decel_value))
   (setq _Alive_count (round __Alive_count))
   self)
  (:ControlSW
   (&optional (__ControlSW :null))
   (if (not (eq __ControlSW :null)) (setq _ControlSW __ControlSW)) _ControlSW)
  (:EPS_En
   (&optional (__EPS_En :null))
   (if (not (eq __EPS_En :null)) (setq _EPS_En __EPS_En)) _EPS_En)
  (:SCC_En
   (&optional (__SCC_En :null))
   (if (not (eq __SCC_En :null)) (setq _SCC_En __SCC_En)) _SCC_En)
  (:AEB_Act
   (&optional (__AEB_Act :null))
   (if (not (eq __AEB_Act :null)) (setq _AEB_Act __AEB_Act)) _AEB_Act)
  (:EPS_Interval
   (&optional __EPS_Interval)
   (if __EPS_Interval (setq _EPS_Interval __EPS_Interval)) _EPS_Interval)
  (:AEB_decel_value
   (&optional __AEB_decel_value)
   (if __AEB_decel_value (setq _AEB_decel_value __AEB_decel_value)) _AEB_decel_value)
  (:Alive_count
   (&optional __Alive_count)
   (if __Alive_count (setq _Alive_count __Alive_count)) _Alive_count)
  (:serialization-length
   ()
   (+
    ;; bool _ControlSW
    1
    ;; bool _EPS_En
    1
    ;; bool _SCC_En
    1
    ;; bool _AEB_Act
    1
    ;; uint8 _EPS_Interval
    1
    ;; uint8 _AEB_decel_value
    1
    ;; uint8 _Alive_count
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _ControlSW
       (if _ControlSW (write-byte -1 s) (write-byte 0 s))
     ;; bool _EPS_En
       (if _EPS_En (write-byte -1 s) (write-byte 0 s))
     ;; bool _SCC_En
       (if _SCC_En (write-byte -1 s) (write-byte 0 s))
     ;; bool _AEB_Act
       (if _AEB_Act (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _EPS_Interval
       (write-byte _EPS_Interval s)
     ;; uint8 _AEB_decel_value
       (write-byte _AEB_decel_value s)
     ;; uint8 _Alive_count
       (write-byte _Alive_count s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _ControlSW
     (setq _ControlSW (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _EPS_En
     (setq _EPS_En (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _SCC_En
     (setq _SCC_En (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _AEB_Act
     (setq _AEB_Act (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _EPS_Interval
     (setq _EPS_Interval (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _AEB_decel_value
     (setq _AEB_decel_value (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _Alive_count
     (setq _Alive_count (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get can_package::CONTROL_MSG_1 :md5sum-) "476713e91b4fe704c7741061e3ed1316")
(setf (get can_package::CONTROL_MSG_1 :datatype-) "can_package/CONTROL_MSG_1")
(setf (get can_package::CONTROL_MSG_1 :definition-)
      "bool ControlSW
bool EPS_En
bool SCC_En
bool AEB_Act
uint8 EPS_Interval 
uint8 AEB_decel_value
uint8 Alive_count

")



(provide :can_package/CONTROL_MSG_1 "476713e91b4fe704c7741061e3ed1316")


