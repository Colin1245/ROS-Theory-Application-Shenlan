;; Auto-generated. Do not edit!


(when (boundp 'vision2::pose)
  (if (not (find-package "VISION2"))
    (make-package "VISION2"))
  (shadow 'pose (find-package "VISION2")))
(unless (find-package "VISION2::POSE")
  (make-package "VISION2::POSE"))

(in-package "ROS")
;;//! \htmlinclude pose.msg.html


(defclass vision2::pose
  :super ros::object
  :slots (_pose_x _pose_y _size_x _size_y _id ))

(defmethod vision2::pose
  (:init
   (&key
    ((:pose_x __pose_x) 0)
    ((:pose_y __pose_y) 0)
    ((:size_x __size_x) 0)
    ((:size_y __size_y) 0)
    ((:id __id) "")
    )
   (send-super :init)
   (setq _pose_x (round __pose_x))
   (setq _pose_y (round __pose_y))
   (setq _size_x (round __size_x))
   (setq _size_y (round __size_y))
   (setq _id (string __id))
   self)
  (:pose_x
   (&optional __pose_x)
   (if __pose_x (setq _pose_x __pose_x)) _pose_x)
  (:pose_y
   (&optional __pose_y)
   (if __pose_y (setq _pose_y __pose_y)) _pose_y)
  (:size_x
   (&optional __size_x)
   (if __size_x (setq _size_x __size_x)) _size_x)
  (:size_y
   (&optional __size_y)
   (if __size_y (setq _size_y __size_y)) _size_y)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; int64 _pose_x
    8
    ;; int64 _pose_y
    8
    ;; int64 _size_x
    8
    ;; int64 _size_y
    8
    ;; string _id
    4 (length _id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _pose_x
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _pose_x (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _pose_x) (= (length (_pose_x . bv)) 2)) ;; bignum
              (write-long (ash (elt (_pose_x . bv) 0) 0) s)
              (write-long (ash (elt (_pose_x . bv) 1) -1) s))
             ((and (class _pose_x) (= (length (_pose_x . bv)) 1)) ;; big1
              (write-long (elt (_pose_x . bv) 0) s)
              (write-long (if (>= _pose_x 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _pose_x s)(write-long (if (>= _pose_x 0) 0 #xffffffff) s)))
     ;; int64 _pose_y
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _pose_y (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _pose_y) (= (length (_pose_y . bv)) 2)) ;; bignum
              (write-long (ash (elt (_pose_y . bv) 0) 0) s)
              (write-long (ash (elt (_pose_y . bv) 1) -1) s))
             ((and (class _pose_y) (= (length (_pose_y . bv)) 1)) ;; big1
              (write-long (elt (_pose_y . bv) 0) s)
              (write-long (if (>= _pose_y 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _pose_y s)(write-long (if (>= _pose_y 0) 0 #xffffffff) s)))
     ;; int64 _size_x
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _size_x (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _size_x) (= (length (_size_x . bv)) 2)) ;; bignum
              (write-long (ash (elt (_size_x . bv) 0) 0) s)
              (write-long (ash (elt (_size_x . bv) 1) -1) s))
             ((and (class _size_x) (= (length (_size_x . bv)) 1)) ;; big1
              (write-long (elt (_size_x . bv) 0) s)
              (write-long (if (>= _size_x 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _size_x s)(write-long (if (>= _size_x 0) 0 #xffffffff) s)))
     ;; int64 _size_y
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _size_y (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _size_y) (= (length (_size_y . bv)) 2)) ;; bignum
              (write-long (ash (elt (_size_y . bv) 0) 0) s)
              (write-long (ash (elt (_size_y . bv) 1) -1) s))
             ((and (class _size_y) (= (length (_size_y . bv)) 1)) ;; big1
              (write-long (elt (_size_y . bv) 0) s)
              (write-long (if (>= _size_y 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _size_y s)(write-long (if (>= _size_y 0) 0 #xffffffff) s)))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _pose_x
#+(or :alpha :irix6 :x86_64)
      (setf _pose_x (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _pose_x (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _pose_y
#+(or :alpha :irix6 :x86_64)
      (setf _pose_y (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _pose_y (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _size_x
#+(or :alpha :irix6 :x86_64)
      (setf _size_x (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _size_x (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _size_y
#+(or :alpha :irix6 :x86_64)
      (setf _size_y (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _size_y (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get vision2::pose :md5sum-) "3a518b3a09f8b8f8b8aa5ae8d417c35d")
(setf (get vision2::pose :datatype-) "vision2/pose")
(setf (get vision2::pose :definition-)
      "int64 pose_x
int64 pose_y
int64 size_x
int64 size_y
string id

")



(provide :vision2/pose "3a518b3a09f8b8f8b8aa5ae8d417c35d")


