; Auto-generated. Do not edit!


(cl:in-package test1-msg)


;//! \htmlinclude Size.msg.html

(cl:defclass <Size> (roslisp-msg-protocol:ros-message)
  ((width
    :reader width
    :initarg :width
    :type cl:integer
    :initform 0)
   (high
    :reader high
    :initarg :high
    :type cl:integer
    :initform 0)
   (x
    :reader x
    :initarg :x
    :type cl:integer
    :initform 0))
)

(cl:defclass Size (<Size>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Size>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Size)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test1-msg:<Size> is deprecated: use test1-msg:Size instead.")))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <Size>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test1-msg:width-val is deprecated.  Use test1-msg:width instead.")
  (width m))

(cl:ensure-generic-function 'high-val :lambda-list '(m))
(cl:defmethod high-val ((m <Size>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test1-msg:high-val is deprecated.  Use test1-msg:high instead.")
  (high m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <Size>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test1-msg:x-val is deprecated.  Use test1-msg:x instead.")
  (x m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Size>) ostream)
  "Serializes a message object of type '<Size>"
  (cl:let* ((signed (cl:slot-value msg 'width)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'high)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Size>) istream)
  "Deserializes a message object of type '<Size>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'width) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'high) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Size>)))
  "Returns string type for a message object of type '<Size>"
  "test1/Size")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Size)))
  "Returns string type for a message object of type 'Size"
  "test1/Size")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Size>)))
  "Returns md5sum for a message object of type '<Size>"
  "b63aaa22191fa8223fe28347d657eaf6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Size)))
  "Returns md5sum for a message object of type 'Size"
  "b63aaa22191fa8223fe28347d657eaf6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Size>)))
  "Returns full string definition for message of type '<Size>"
  (cl:format cl:nil "int32 width~%int32 high~%int32 x~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Size)))
  "Returns full string definition for message of type 'Size"
  (cl:format cl:nil "int32 width~%int32 high~%int32 x~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Size>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Size>))
  "Converts a ROS message object to a list"
  (cl:list 'Size
    (cl:cons ':width (width msg))
    (cl:cons ':high (high msg))
    (cl:cons ':x (x msg))
))
