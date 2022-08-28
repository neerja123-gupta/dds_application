
(cl:in-package :asdf)

(defsystem "dds_application-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Calculator" :depends-on ("_package_Calculator"))
    (:file "_package_Calculator" :depends-on ("_package"))
  ))