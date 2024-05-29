;; Auto-generated. Do not edit!


(when (boundp 'can_package::FB_EAIT_ETC)
  (if (not (find-package "CAN_PACKAGE"))
    (make-package "CAN_PACKAGE"))
  (shadow 'FB_EAIT_ETC (find-package "CAN_PACKAGE")))
(unless (find-package "CAN_PACKAGE::FB_EAIT_ETC")
  (make-package "CAN_PACKAGE::FB_EAIT_ETC"))

(in-package "ROS")
;;//! \htmlinclude FB_EAIT_ETC.msg.html


(defclass can_package::FB_EAIT_ETC
  :super ros::object
  :slots (_acc_pedal_percent _brk_pedal_percent _turn_sig _LCS_button_sig _Limit_sig _Cruise_buttons_sig ))

(defmethod can_package::FB_EAIT_ETC
  (:init
   (&key
    ((:acc_pedal_percent __acc_pedal_percent) 0)
    ((:brk_pedal_percent __brk_pedal_percent) 0)
    ((:turn_sig __turn_sig) 0)
    ((:LCS_button_sig __LCS_button_sig) nil)
    ((:Limit_sig __Limit_sig) nil)
    ((:Cruise_buttons_sig __Cruise_buttons_sig) 0)
    )
   (send-super :init)
   (setq _acc_pedal_percent (round __acc_pedal_percent))
   (setq _brk_pedal_percent (round __brk_pedal_percent))
   (setq _turn_sig (round __turn_sig))
   (setq _LCS_button_sig __LCS_button_sig)
   (setq _Limit_sig __Limit_sig)
   (setq _Cruise_buttons_sig (round __Cruise_buttons_sig))
   self)
  (:acc_pedal_percent
   (&optional __acc_pedal_percent)
   (if __acc_pedal_percent (setq _acc_pedal_percent __acc_pedal_percent)) _acc_pedal_percent)
  (:brk_pedal_percent
   (&optional __brk_pedal_percent)
   (if __brk_pedal_percent (setq _brk_pedal_percent __brk_pedal_percent)) _brk_pedal_percent)
  (:turn_sig
   (&optional __turn_sig)
   (if __turn_sig (setq _turn_sig __turn_sig)) _turn_sig)
  (:LCS_button_sig
   (&optional (__LCS_button_sig :null))
   (if (not (eq __LCS_button_sig :null)) (setq _LCS_button_sig __LCS_button_sig)) _LCS_button_sig)
  (:Limit_sig
   (&optional (__Limit_sig :null))
   (if (not (eq __Limit_sig :null)) (setq _Limit_sig __Limit_sig)) _Limit_sig)
  (:Cruise_buttons_sig
   (&optional __Cruise_buttons_sig)
   (if __Cruise_buttons_sig (setq _Cruise_buttons_sig __Cruise_buttons_sig)) _Cruise_buttons_sig)
  (:serialization-length
   ()
   (+
    ;; uint16 _acc_pedal_percent
    2
    ;; uint16 _brk_pedal_percent
    2
    ;; uint8 _turn_sig
    1
    ;; bool _LCS_button_sig
    1
    ;; bool _Limit_sig
    1
    ;; uint8 _Cruise_buttons_sig
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _acc_pedal_percent
       (write-word _acc_pedal_percent s)
     ;; uint16 _brk_pedal_percent
       (write-word _brk_pedal_percent s)
     ;; uint8 _turn_sig
       (write-byte _turn_sig s)
     ;; bool _LCS_button_sig
       (if _LCS_button_sig (write-byte -1 s) (write-byte 0 s))
     ;; bool _Limit_sig
       (if _Limit_sig (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _Cruise_buttons_sig
       (write-byte _Cruise_buttons_sig s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _acc_pedal_percent
     (setq _acc_pedal_percent (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _brk_pedal_percent
     (setq _brk_pedal_percent (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _turn_sig
     (setq _turn_sig (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _LCS_button_sig
     (setq _LCS_button_sig (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _Limit_sig
     (setq _Limit_sig (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _Cruise_buttons_sig
     (setq _Cruise_buttons_sig (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get can_package::FB_EAIT_ETC :md5sum-) "adf0c54b44ed0a214b3be3c2060de9bb")
(setf (get can_package::FB_EAIT_ETC :datatype-) "can_package/FB_EAIT_ETC")
(setf (get can_package::FB_EAIT_ETC :definition-)
      "
uint16 acc_pedal_percent     # 0|16@1+ (1,0) [0|2000] %
uint16 brk_pedal_percent     # 16|16@1+ (1,0) [0|2000] %
uint8 turn_sig               # 32|8@1+ (1,0) [0|0]
bool LCS_button_sig          # 47|1@1+ (1,0) [0|0]
bool Limit_sig               # 45|1@1+ (1,0) [0|0]
uint8 Cruise_buttons_sig     # 40|4@1+ (1,0) [0|0]

")



(provide :can_package/FB_EAIT_ETC "adf0c54b44ed0a214b3be3c2060de9bb")


