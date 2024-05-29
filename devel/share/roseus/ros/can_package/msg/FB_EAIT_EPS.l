;; Auto-generated. Do not edit!


(when (boundp 'can_package::FB_EAIT_EPS)
  (if (not (find-package "CAN_PACKAGE"))
    (make-package "CAN_PACKAGE"))
  (shadow 'FB_EAIT_EPS (find-package "CAN_PACKAGE")))
(unless (find-package "CAN_PACKAGE::FB_EAIT_EPS")
  (make-package "CAN_PACKAGE::FB_EAIT_EPS"))

(in-package "ROS")
;;//! \htmlinclude FB_EAIT_EPS.msg.html


(defclass can_package::FB_EAIT_EPS
  :super ros::object
  :slots (_EPS_En_FB _Override_state _EPS_control_state _Steering_angle _Control_SW_FB _Str_Tq_1 _Str_Tq_2 _FB_alive_count ))

(defmethod can_package::FB_EAIT_EPS
  (:init
   (&key
    ((:EPS_En_FB __EPS_En_FB) nil)
    ((:Override_state __Override_state) nil)
    ((:EPS_control_state __EPS_control_state) 0)
    ((:Steering_angle __Steering_angle) 0.0)
    ((:Control_SW_FB __Control_SW_FB) nil)
    ((:Str_Tq_1 __Str_Tq_1) 0)
    ((:Str_Tq_2 __Str_Tq_2) 0)
    ((:FB_alive_count __FB_alive_count) 0)
    )
   (send-super :init)
   (setq _EPS_En_FB __EPS_En_FB)
   (setq _Override_state __Override_state)
   (setq _EPS_control_state (round __EPS_control_state))
   (setq _Steering_angle (float __Steering_angle))
   (setq _Control_SW_FB __Control_SW_FB)
   (setq _Str_Tq_1 (round __Str_Tq_1))
   (setq _Str_Tq_2 (round __Str_Tq_2))
   (setq _FB_alive_count (round __FB_alive_count))
   self)
  (:EPS_En_FB
   (&optional (__EPS_En_FB :null))
   (if (not (eq __EPS_En_FB :null)) (setq _EPS_En_FB __EPS_En_FB)) _EPS_En_FB)
  (:Override_state
   (&optional (__Override_state :null))
   (if (not (eq __Override_state :null)) (setq _Override_state __Override_state)) _Override_state)
  (:EPS_control_state
   (&optional __EPS_control_state)
   (if __EPS_control_state (setq _EPS_control_state __EPS_control_state)) _EPS_control_state)
  (:Steering_angle
   (&optional __Steering_angle)
   (if __Steering_angle (setq _Steering_angle __Steering_angle)) _Steering_angle)
  (:Control_SW_FB
   (&optional (__Control_SW_FB :null))
   (if (not (eq __Control_SW_FB :null)) (setq _Control_SW_FB __Control_SW_FB)) _Control_SW_FB)
  (:Str_Tq_1
   (&optional __Str_Tq_1)
   (if __Str_Tq_1 (setq _Str_Tq_1 __Str_Tq_1)) _Str_Tq_1)
  (:Str_Tq_2
   (&optional __Str_Tq_2)
   (if __Str_Tq_2 (setq _Str_Tq_2 __Str_Tq_2)) _Str_Tq_2)
  (:FB_alive_count
   (&optional __FB_alive_count)
   (if __FB_alive_count (setq _FB_alive_count __FB_alive_count)) _FB_alive_count)
  (:serialization-length
   ()
   (+
    ;; bool _EPS_En_FB
    1
    ;; bool _Override_state
    1
    ;; uint8 _EPS_control_state
    1
    ;; float32 _Steering_angle
    4
    ;; bool _Control_SW_FB
    1
    ;; uint16 _Str_Tq_1
    2
    ;; uint16 _Str_Tq_2
    2
    ;; uint8 _FB_alive_count
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _EPS_En_FB
       (if _EPS_En_FB (write-byte -1 s) (write-byte 0 s))
     ;; bool _Override_state
       (if _Override_state (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _EPS_control_state
       (write-byte _EPS_control_state s)
     ;; float32 _Steering_angle
       (sys::poke _Steering_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _Control_SW_FB
       (if _Control_SW_FB (write-byte -1 s) (write-byte 0 s))
     ;; uint16 _Str_Tq_1
       (write-word _Str_Tq_1 s)
     ;; uint16 _Str_Tq_2
       (write-word _Str_Tq_2 s)
     ;; uint8 _FB_alive_count
       (write-byte _FB_alive_count s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _EPS_En_FB
     (setq _EPS_En_FB (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _Override_state
     (setq _Override_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _EPS_control_state
     (setq _EPS_control_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _Steering_angle
     (setq _Steering_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _Control_SW_FB
     (setq _Control_SW_FB (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint16 _Str_Tq_1
     (setq _Str_Tq_1 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _Str_Tq_2
     (setq _Str_Tq_2 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _FB_alive_count
     (setq _FB_alive_count (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get can_package::FB_EAIT_EPS :md5sum-) "b0fbecc9edcbb9cae7095ad825588218")
(setf (get can_package::FB_EAIT_EPS :datatype-) "can_package/FB_EAIT_EPS")
(setf (get can_package::FB_EAIT_EPS :definition-)
      "
bool EPS_En_FB          # 4|1@1+ (1,0) [0|1]
bool Override_state     # 7|1@1+ (1,0) [0|1]
uint8 EPS_control_state # 0|4@1+ (1,0) [0|10]
float32 Steering_angle  # 8|16@1- (0.1,0) [-540|540] deg
bool Control_SW_FB      # 5|1@1+ (1,0) [0|1]
uint16 Str_Tq_1        # 24|13@1+ (0.01,-20.48) [-20.48|61.43]
uint16 Str_Tq_2        # 40|12@1+ (0.1,-204.8) [-204.8|204.7]
uint8 FB_alive_count    # 56|8@1+ (1,0) [0|255]

")



(provide :can_package/FB_EAIT_EPS "b0fbecc9edcbb9cae7095ad825588218")


