
(cl:in-package :asdf)

(defsystem "darknet_ros_zed-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "coordinate_msgs" :depends-on ("_package_coordinate_msgs"))
    (:file "_package_coordinate_msgs" :depends-on ("_package"))
  ))