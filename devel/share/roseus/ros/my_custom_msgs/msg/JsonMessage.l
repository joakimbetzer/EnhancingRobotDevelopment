;; Auto-generated. Do not edit!


(when (boundp 'my_custom_msgs::JsonMessage)
  (if (not (find-package "MY_CUSTOM_MSGS"))
    (make-package "MY_CUSTOM_MSGS"))
  (shadow 'JsonMessage (find-package "MY_CUSTOM_MSGS")))
(unless (find-package "MY_CUSTOM_MSGS::JSONMESSAGE")
  (make-package "MY_CUSTOM_MSGS::JSONMESSAGE"))

(in-package "ROS")
;;//! \htmlinclude JsonMessage.msg.html


(defclass my_custom_msgs::JsonMessage
  :super ros::object
  :slots (_timestamp _expectedSpeed _actualSpeed ))

(defmethod my_custom_msgs::JsonMessage
  (:init
   (&key
    ((:timestamp __timestamp) 0.0)
    ((:expectedSpeed __expectedSpeed) "")
    ((:actualSpeed __actualSpeed) "")
    )
   (send-super :init)
   (setq _timestamp (float __timestamp))
   (setq _expectedSpeed (string __expectedSpeed))
   (setq _actualSpeed (string __actualSpeed))
   self)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:expectedSpeed
   (&optional __expectedSpeed)
   (if __expectedSpeed (setq _expectedSpeed __expectedSpeed)) _expectedSpeed)
  (:actualSpeed
   (&optional __actualSpeed)
   (if __actualSpeed (setq _actualSpeed __actualSpeed)) _actualSpeed)
  (:serialization-length
   ()
   (+
    ;; float32 _timestamp
    4
    ;; string _expectedSpeed
    4 (length _expectedSpeed)
    ;; string _actualSpeed
    4 (length _actualSpeed)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _timestamp
       (sys::poke _timestamp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _expectedSpeed
       (write-long (length _expectedSpeed) s) (princ _expectedSpeed s)
     ;; string _actualSpeed
       (write-long (length _actualSpeed) s) (princ _actualSpeed s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _timestamp
     (setq _timestamp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _expectedSpeed
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _expectedSpeed (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _actualSpeed
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _actualSpeed (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get my_custom_msgs::JsonMessage :md5sum-) "0fb49a7ad0c83707de55ce5897673f5c")
(setf (get my_custom_msgs::JsonMessage :datatype-) "my_custom_msgs/JsonMessage")
(setf (get my_custom_msgs::JsonMessage :definition-)
      "float32 timestamp
string expectedSpeed
string actualSpeed
")



(provide :my_custom_msgs/JsonMessage "0fb49a7ad0c83707de55ce5897673f5c")


