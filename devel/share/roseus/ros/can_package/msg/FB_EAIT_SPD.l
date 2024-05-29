;; Auto-generated. Do not edit!


(when (boundp 'can_package::FB_EAIT_SPD)
  (if (not (find-package "CAN_PACKAGE"))
    (make-package "CAN_PACKAGE"))
  (shadow 'FB_EAIT_SPD (find-package "CAN_PACKAGE")))
(unless (find-package "CAN_PACKAGE::FB_EAIT_SPD")
  (make-package "CAN_PACKAGE::FB_EAIT_SPD"))

(in-package "ROS")
;;//! \htmlinclude FB_EAIT_SPD.msg.html


(defclass can_package::FB_EAIT_SPD
  :super ros::object
  :slots (_WHL_SPD_FL _WHL_SPD_FR _WHL_SPD_RL _WHL_SPD_RR ))

(defmethod can_package::FB_EAIT_SPD
  (:init
   (&key
    ((:WHL_SPD_FL __WHL_SPD_FL) 0)
    ((:WHL_SPD_FR __WHL_SPD_FR) 0)
    ((:WHL_SPD_RL __WHL_SPD_RL) 0)
    ((:WHL_SPD_RR __WHL_SPD_RR) 0)
    )
   (send-super :init)
   (setq _WHL_SPD_FL (round __WHL_SPD_FL))
   (setq _WHL_SPD_FR (round __WHL_SPD_FR))
   (setq _WHL_SPD_RL (round __WHL_SPD_RL))
   (setq _WHL_SPD_RR (round __WHL_SPD_RR))
   self)
  (:WHL_SPD_FL
   (&optional __WHL_SPD_FL)
   (if __WHL_SPD_FL (setq _WHL_SPD_FL __WHL_SPD_FL)) _WHL_SPD_FL)
  (:WHL_SPD_FR
   (&optional __WHL_SPD_FR)
   (if __WHL_SPD_FR (setq _WHL_SPD_FR __WHL_SPD_FR)) _WHL_SPD_FR)
  (:WHL_SPD_RL
   (&optional __WHL_SPD_RL)
   (if __WHL_SPD_RL (setq _WHL_SPD_RL __WHL_SPD_RL)) _WHL_SPD_RL)
  (:WHL_SPD_RR
   (&optional __WHL_SPD_RR)
   (if __WHL_SPD_RR (setq _WHL_SPD_RR __WHL_SPD_RR)) _WHL_SPD_RR)
  (:serialization-length
   ()
   (+
    ;; uint16 _WHL_SPD_FL
    2
    ;; uint16 _WHL_SPD_FR
    2
    ;; uint16 _WHL_SPD_RL
    2
    ;; uint16 _WHL_SPD_RR
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _WHL_SPD_FL
       (write-word _WHL_SPD_FL s)
     ;; uint16 _WHL_SPD_FR
       (write-word _WHL_SPD_FR s)
     ;; uint16 _WHL_SPD_RL
       (write-word _WHL_SPD_RL s)
     ;; uint16 _WHL_SPD_RR
       (write-word _WHL_SPD_RR s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _WHL_SPD_FL
     (setq _WHL_SPD_FL (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _WHL_SPD_FR
     (setq _WHL_SPD_FR (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _WHL_SPD_RL
     (setq _WHL_SPD_RL (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _WHL_SPD_RR
     (setq _WHL_SPD_RR (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get can_package::FB_EAIT_SPD :md5sum-) "942f3c288489605fdeb5cae068a7cd8a")
(setf (get can_package::FB_EAIT_SPD :datatype-) "can_package/FB_EAIT_SPD")
(setf (get can_package::FB_EAIT_SPD :definition-)
      "
uint16 WHL_SPD_FL    # 0|14@1+ (0.03125,0) [0|511.96875]
uint16 WHL_SPD_FR    # 16|14@1+ (0.03125,0) [0|511.96875]
uint16 WHL_SPD_RL    # 32|14@1+ (0.03125,0) [0|511.96875]
uint16 WHL_SPD_RR    # 48|14@1+ (0.03125,0) [0|511.96875]

")



(provide :can_package/FB_EAIT_SPD "942f3c288489605fdeb5cae068a7cd8a")


