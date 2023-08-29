
(cl:in-package :asdf)

(defsystem "edge_detection_service-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "EdgePoint" :depends-on ("_package_EdgePoint"))
    (:file "_package_EdgePoint" :depends-on ("_package"))
  ))