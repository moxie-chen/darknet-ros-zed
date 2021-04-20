; Auto-generated. Do not edit!


(cl:in-package darknet_ros_zed-msg)


;//! \htmlinclude coordinate_msgs.msg.html

(cl:defclass <coordinate_msgs> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (depth
    :reader depth
    :initarg :depth
    :type cl:float
    :initform 0.0)
   (probability
    :reader probability
    :initarg :probability
    :type cl:float
    :initform 0.0)
   (className
    :reader className
    :initarg :className
    :type cl:string
    :initform ""))
)

(cl:defclass coordinate_msgs (<coordinate_msgs>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <coordinate_msgs>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'coordinate_msgs)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name darknet_ros_zed-msg:<coordinate_msgs> is deprecated: use darknet_ros_zed-msg:coordinate_msgs instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <coordinate_msgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader darknet_ros_zed-msg:x-val is deprecated.  Use darknet_ros_zed-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <coordinate_msgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader darknet_ros_zed-msg:y-val is deprecated.  Use darknet_ros_zed-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'depth-val :lambda-list '(m))
(cl:defmethod depth-val ((m <coordinate_msgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader darknet_ros_zed-msg:depth-val is deprecated.  Use darknet_ros_zed-msg:depth instead.")
  (depth m))

(cl:ensure-generic-function 'probability-val :lambda-list '(m))
(cl:defmethod probability-val ((m <coordinate_msgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader darknet_ros_zed-msg:probability-val is deprecated.  Use darknet_ros_zed-msg:probability instead.")
  (probability m))

(cl:ensure-generic-function 'className-val :lambda-list '(m))
(cl:defmethod className-val ((m <coordinate_msgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader darknet_ros_zed-msg:className-val is deprecated.  Use darknet_ros_zed-msg:className instead.")
  (className m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <coordinate_msgs>) ostream)
  "Serializes a message object of type '<coordinate_msgs>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'depth))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'probability))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'className))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'className))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <coordinate_msgs>) istream)
  "Deserializes a message object of type '<coordinate_msgs>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'depth) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'probability) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'className) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'className) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<coordinate_msgs>)))
  "Returns string type for a message object of type '<coordinate_msgs>"
  "darknet_ros_zed/coordinate_msgs")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'coordinate_msgs)))
  "Returns string type for a message object of type 'coordinate_msgs"
  "darknet_ros_zed/coordinate_msgs")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<coordinate_msgs>)))
  "Returns md5sum for a message object of type '<coordinate_msgs>"
  "2020fc069dbb4fb7790c96426024b2f9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'coordinate_msgs)))
  "Returns md5sum for a message object of type 'coordinate_msgs"
  "2020fc069dbb4fb7790c96426024b2f9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<coordinate_msgs>)))
  "Returns full string definition for message of type '<coordinate_msgs>"
  (cl:format cl:nil "float64 x~%float64 y~%float64 depth~%float64 probability~%string className~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'coordinate_msgs)))
  "Returns full string definition for message of type 'coordinate_msgs"
  (cl:format cl:nil "float64 x~%float64 y~%float64 depth~%float64 probability~%string className~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <coordinate_msgs>))
  (cl:+ 0
     8
     8
     8
     8
     4 (cl:length (cl:slot-value msg 'className))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <coordinate_msgs>))
  "Converts a ROS message object to a list"
  (cl:list 'coordinate_msgs
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':depth (depth msg))
    (cl:cons ':probability (probability msg))
    (cl:cons ':className (className msg))
))
