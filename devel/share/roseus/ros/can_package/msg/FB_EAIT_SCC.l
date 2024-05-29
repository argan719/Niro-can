;; Auto-generated. Do not edit!


(when (boundp 'can_package::FB_EAIT_SCC)
  (if (not (find-package "CAN_PACKAGE"))
    (make-package "CAN_PACKAGE"))
  (shadow 'FB_EAIT_SCC (find-package "CAN_PACKAGE")))
(unless (find-package "CAN_PACKAGE::FB_EAIT_SCC")
  (make-package "CAN_PACKAGE::FB_EAIT_SCC"))

(in-package "ROS")
;;//! \htmlinclude FB_EAIT_SCC.msg.html


(defclass can_package::FB_EAIT_SCC
  :super ros::object
  :slots (_ACC_control_state _EPS_En_FB _Override_ACC_state _Override_BRK_state _Vehicle_speed _AEB_state _Long_Accel _Gear_Disp ))

(defmethod can_package::FB_EAIT_SCC
  (:init
   (&key
    ((:ACC_control_state __ACC_control_state) 0)
    ((:EPS_En_FB __EPS_En_FB) nil)
    ((:Override_ACC_state __Override_ACC_state) nil)
    ((:Override_BRK_state __Override_BRK_state) nil)
    ((:Vehicle_speed __Vehicle_speed) 0)
    ((:AEB_state __AEB_state) nil)
    ((:Long_Accel __Long_Accel) 0.0)
    ((:Gear_Disp __Gear_Disp) 0)
    )
   (send-super :init)
   (setq _ACC_control_state (round __ACC_control_state))
   (setq _EPS_En_FB __EPS_En_FB)
   (setq _Override_ACC_state __Override_ACC_state)
   (setq _Override_BRK_state __Override_BRK_state)
   (setq _Vehicle_speed (round __Vehicle_speed))
   (setq _AEB_state __AEB_state)
   (setq _Long_Accel (float __Long_Accel))
   (setq _Gear_Disp (round __Gear_Disp))
   self)
  (:ACC_control_state
   (&optional __ACC_control_state)
   (if __ACC_control_state (setq _ACC_control_state __ACC_control_state)) _ACC_control_state)
  (:EPS_En_FB
   (&optional (__EPS_En_FB :null))
   (if (not (eq __EPS_En_FB :null)) (setq _EPS_En_FB __EPS_En_FB)) _EPS_En_FB)
  (:Override_ACC_state
   (&optional (__Override_ACC_state :null))
   (if (not (eq __Override_ACC_state :null)) (setq _Override_ACC_state __Override_ACC_state)) _Override_ACC_state)
  (:Override_BRK_state
   (&optional (__Override_BRK_state :null))
   (if (not (eq __Override_BRK_state :null)) (setq _Override_BRK_state __Override_BRK_state)) _Override_BRK_state)
  (:Vehicle_speed
   (&optional __Vehicle_speed)
   (if __Vehicle_speed (setq _Vehicle_speed __Vehicle_speed)) _Vehicle_speed)
  (:AEB_state
   (&optional (__AEB_state :null))
   (if (not (eq __AEB_state :null)) (setq _AEB_state __AEB_state)) _AEB_state)
  (:Long_Accel
   (&optional __Long_Accel)
   (if __Long_Accel (setq _Long_Accel __Long_Accel)) _Long_Accel)
  (:Gear_Disp
   (&optional __Gear_Disp)
   (if __Gear_Disp (setq _Gear_Disp __Gear_Disp)) _Gear_Disp)
  (:serialization-length
   ()
   (+
    ;; uint8 _ACC_control_state
    1
    ;; bool _EPS_En_FB
    1
    ;; bool _Override_ACC_state
    1
    ;; bool _Override_BRK_state
    1
    ;; uint8 _Vehicle_speed
    1
    ;; bool _AEB_state
    1
    ;; float32 _Long_Accel
    4
    ;; uint8 _Gear_Disp
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _ACC_control_state
       (write-byte _ACC_control_state s)
     ;; bool _EPS_En_FB
       (if _EPS_En_FB (write-byte -1 s) (write-byte 0 s))
     ;; bool _Override_ACC_state
       (if _Override_ACC_state (write-byte -1 s) (write-byte 0 s))
     ;; bool _Override_BRK_state
       (if _Override_BRK_state (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _Vehicle_speed
       (write-byte _Vehicle_speed s)
     ;; bool _AEB_state
       (if _AEB_state (write-byte -1 s) (write-byte 0 s))
     ;; float32 _Long_Accel
       (sys::poke _Long_Accel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _Gear_Disp
       (write-byte _Gear_Disp s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _ACC_control_state
     (setq _ACC_control_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _EPS_En_FB
     (setq _EPS_En_FB (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _Override_ACC_state
     (setq _Override_ACC_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _Override_BRK_state
     (setq _Override_BRK_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _Vehicle_speed
     (setq _Vehicle_speed (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _AEB_state
     (setq _AEB_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _Long_Accel
     (setq _Long_Accel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _Gear_Disp
     (setq _Gear_Disp (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get can_package::FB_EAIT_SCC :md5sum-) "c259b215cb428509acd187f1b6939bc1")
(setf (get can_package::FB_EAIT_SCC :datatype-) "can_package/FB_EAIT_SCC")
(setf (get can_package::FB_EAIT_SCC :definition-)
      "
uint8 ACC_control_state  # 0|4@1+ (1,0) [0|10]
bool EPS_En_FB           # 4|1@1+ (1,0) [0|1]
bool Override_ACC_state  # 6|1@1+ (1,0) [0|1]
bool Override_BRK_state  # 7|1@1+ (1,0) [0|1]
uint8 Vehicle_speed      # 8|8@1+ (1,0) [0|255] kph
bool AEB_state           # 5|1@1+ (1,0) [0|1]
float32 Long_Accel       # 16|16@1+ (0.000127465,-4.17677312) [-4.17677312|4.176645655] m/s^2
uint8 Gear_Disp          # 32|4@1+ (1,0) [0|15]

")



(provide :can_package/FB_EAIT_SCC "c259b215cb428509acd187f1b6939bc1")


