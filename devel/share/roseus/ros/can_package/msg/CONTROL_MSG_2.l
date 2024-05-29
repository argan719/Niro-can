;; Auto-generated. Do not edit!


(when (boundp 'can_package::CONTROL_MSG_2)
  (if (not (find-package "CAN_PACKAGE"))
    (make-package "CAN_PACKAGE"))
  (shadow 'CONTROL_MSG_2 (find-package "CAN_PACKAGE")))
(unless (find-package "CAN_PACKAGE::CONTROL_MSG_2")
  (make-package "CAN_PACKAGE::CONTROL_MSG_2"))

(in-package "ROS")
;;//! \htmlinclude CONTROL_MSG_2.msg.html


(defclass can_package::CONTROL_MSG_2
  :super ros::object
  :slots (_EPS_command _SCC_command ))

(defmethod can_package::CONTROL_MSG_2
  (:init
   (&key
    ((:EPS_command __EPS_command) 0)
    ((:SCC_command __SCC_command) 0)
    )
   (send-super :init)
   (setq _EPS_command (round __EPS_command))
   (setq _SCC_command (round __SCC_command))
   self)
  (:EPS_command
   (&optional __EPS_command)
   (if __EPS_command (setq _EPS_command __EPS_command)) _EPS_command)
  (:SCC_command
   (&optional __SCC_command)
   (if __SCC_command (setq _SCC_command __SCC_command)) _SCC_command)
  (:serialization-length
   ()
   (+
    ;; int16 _EPS_command
    2
    ;; uint16 _SCC_command
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _EPS_command
       (write-word _EPS_command s)
     ;; uint16 _SCC_command
       (write-word _SCC_command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _EPS_command
     (setq _EPS_command (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _SCC_command
     (setq _SCC_command (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get can_package::CONTROL_MSG_2 :md5sum-) "7868707315b8b995234d9673967cb406")
(setf (get can_package::CONTROL_MSG_2 :datatype-) "can_package/CONTROL_MSG_2")
(setf (get can_package::CONTROL_MSG_2 :definition-)
      "int16 EPS_command
uint16 SCC_command

")



(provide :can_package/CONTROL_MSG_2 "7868707315b8b995234d9673967cb406")


