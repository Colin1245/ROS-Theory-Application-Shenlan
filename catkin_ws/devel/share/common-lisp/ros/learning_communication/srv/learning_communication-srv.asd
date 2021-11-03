
(cl:in-package :asdf)

(defsystem "learning_communication-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "PersonSrv" :depends-on ("_package_PersonSrv"))
    (:file "_package_PersonSrv" :depends-on ("_package"))
  ))