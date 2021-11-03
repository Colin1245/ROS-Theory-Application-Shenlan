;; Auto-generated. Do not edit!


(when (boundp 'vision1::Size)
  (if (not (find-package "VISION1"))
    (make-package "VISION1"))
  (shadow 'Size (find-package "VISION1")))
(unless (find-package "VISION1::SIZE")
  (make-package "VISION1::SIZE"))

(in-package "ROS")
;;//! \htmlinclude Size.msg.html


(defclass vision1::Size
  :super ros::object
  :slots (_width _high _x ))

(defmethod vision1::Size
  (:init
   (&key
    ((:width __width) 0)
    ((:high __high) 0)
    ((:x __x) 0)
    )
   (send-super :init)
   (setq _width (round __width))
   (setq _high (round __high))
   (setq _x (round __x))
   self)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:high
   (&optional __high)
   (if __high (setq _high __high)) _high)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:serialization-length
   ()
   (+
    ;; int32 _width
    4
    ;; int32 _high
    4
    ;; int32 _x
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _width
       (write-long _width s)
     ;; int32 _high
       (write-long _high s)
     ;; int32 _x
       (write-long _x s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _width
     (setq _width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _high
     (setq _high (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _x
     (setq _x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get vision1::Size :md5sum-) "b63aaa22191fa8223fe28347d657eaf6")
(setf (get vision1::Size :datatype-) "vision1/Size")
(setf (get vision1::Size :definition-)
      "int32 width
int32 high
int32 x

")



(provide :vision1/Size "b63aaa22191fa8223fe28347d657eaf6")


