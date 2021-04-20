;; Auto-generated. Do not edit!


(when (boundp 'darknet_ros_zed::coordinate_msgs)
  (if (not (find-package "DARKNET_ROS_ZED"))
    (make-package "DARKNET_ROS_ZED"))
  (shadow 'coordinate_msgs (find-package "DARKNET_ROS_ZED")))
(unless (find-package "DARKNET_ROS_ZED::COORDINATE_MSGS")
  (make-package "DARKNET_ROS_ZED::COORDINATE_MSGS"))

(in-package "ROS")
;;//! \htmlinclude coordinate_msgs.msg.html


(defclass darknet_ros_zed::coordinate_msgs
  :super ros::object
  :slots (_x _y _depth _probability _className ))

(defmethod darknet_ros_zed::coordinate_msgs
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:depth __depth) 0.0)
    ((:probability __probability) 0.0)
    ((:className __className) "")
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _depth (float __depth))
   (setq _probability (float __probability))
   (setq _className (string __className))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:depth
   (&optional __depth)
   (if __depth (setq _depth __depth)) _depth)
  (:probability
   (&optional __probability)
   (if __probability (setq _probability __probability)) _probability)
  (:className
   (&optional __className)
   (if __className (setq _className __className)) _className)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _depth
    8
    ;; float64 _probability
    8
    ;; string _className
    4 (length _className)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _depth
       (sys::poke _depth (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _probability
       (sys::poke _probability (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _className
       (write-long (length _className) s) (princ _className s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _depth
     (setq _depth (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _probability
     (setq _probability (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _className
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _className (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get darknet_ros_zed::coordinate_msgs :md5sum-) "2020fc069dbb4fb7790c96426024b2f9")
(setf (get darknet_ros_zed::coordinate_msgs :datatype-) "darknet_ros_zed/coordinate_msgs")
(setf (get darknet_ros_zed::coordinate_msgs :definition-)
      "float64 x
float64 y
float64 depth
float64 probability
string className

")



(provide :darknet_ros_zed/coordinate_msgs "2020fc069dbb4fb7790c96426024b2f9")


