;; Auto-generated. Do not edit!


(when (boundp 'my_custom_msgs::LidarData)
  (if (not (find-package "MY_CUSTOM_MSGS"))
    (make-package "MY_CUSTOM_MSGS"))
  (shadow 'LidarData (find-package "MY_CUSTOM_MSGS")))
(unless (find-package "MY_CUSTOM_MSGS::LIDARDATA")
  (make-package "MY_CUSTOM_MSGS::LIDARDATA"))

(in-package "ROS")
;;//! \htmlinclude LidarData.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass my_custom_msgs::LidarData
  :super ros::object
  :slots (_header _lidar_values _additional_data ))

(defmethod my_custom_msgs::LidarData
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:lidar_values __lidar_values) (make-array 360 :initial-element 0.0 :element-type :float))
    ((:additional_data __additional_data) (let (r) (dotimes (i 8) (push "" r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _lidar_values __lidar_values)
   (setq _additional_data __additional_data)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:lidar_values
   (&optional __lidar_values)
   (if __lidar_values (setq _lidar_values __lidar_values)) _lidar_values)
  (:additional_data
   (&optional __additional_data)
   (if __additional_data (setq _additional_data __additional_data)) _additional_data)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32[360] _lidar_values
    (* 4    360)
    ;; string[8] _additional_data
    (apply #'+ 4 (length _additional_data)    8)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32[360] _lidar_values
     (dotimes (i 360)
       (sys::poke (elt _lidar_values i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; string[8] _additional_data
     (write-long (length _additional_data) s)
     (dolist (elem _additional_data)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32[360] _lidar_values
   (dotimes (i (length _lidar_values))
     (setf (elt _lidar_values i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; string[8] _additional_data
   (dotimes (i (length _additional_data))
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _additional_data i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     )
   ;;
   self)
  )

(setf (get my_custom_msgs::LidarData :md5sum-) "fb0d95f66fac873e7d29547736862403")
(setf (get my_custom_msgs::LidarData :datatype-) "my_custom_msgs/LidarData")
(setf (get my_custom_msgs::LidarData :definition-)
      "Header header
float32[360] lidar_values
string[8] additional_data

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :my_custom_msgs/LidarData "fb0d95f66fac873e7d29547736862403")


