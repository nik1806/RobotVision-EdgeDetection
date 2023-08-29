
(cl:in-package :asdf)

(defsystem "edge_detection_service-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "EdgeDetection" :depends-on ("_package_EdgeDetection"))
    (:file "_package_EdgeDetection" :depends-on ("_package"))
  ))