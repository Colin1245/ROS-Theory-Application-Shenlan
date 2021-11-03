
(cl:in-package :asdf)

(defsystem "test1-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Size" :depends-on ("_package_Size"))
    (:file "_package_Size" :depends-on ("_package"))
  ))