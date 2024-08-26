; Auto-generated. Do not edit!


(cl:in-package my_custom_msgs-msg)


;//! \htmlinclude LidarData.msg.html

(cl:defclass <LidarData> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (lidar_values
    :reader lidar_values
    :initarg :lidar_values
    :type (cl:vector cl:float)
   :initform (cl:make-array 360 :element-type 'cl:float :initial-element 0.0))
   (additional_data
    :reader additional_data
    :initarg :additional_data
    :type (cl:vector cl:string)
   :initform (cl:make-array 8 :element-type 'cl:string :initial-element "")))
)

(cl:defclass LidarData (<LidarData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LidarData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LidarData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_custom_msgs-msg:<LidarData> is deprecated: use my_custom_msgs-msg:LidarData instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LidarData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_custom_msgs-msg:header-val is deprecated.  Use my_custom_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'lidar_values-val :lambda-list '(m))
(cl:defmethod lidar_values-val ((m <LidarData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_custom_msgs-msg:lidar_values-val is deprecated.  Use my_custom_msgs-msg:lidar_values instead.")
  (lidar_values m))

(cl:ensure-generic-function 'additional_data-val :lambda-list '(m))
(cl:defmethod additional_data-val ((m <LidarData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_custom_msgs-msg:additional_data-val is deprecated.  Use my_custom_msgs-msg:additional_data instead.")
  (additional_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LidarData>) ostream)
  "Serializes a message object of type '<LidarData>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'lidar_values))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'additional_data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LidarData>) istream)
  "Deserializes a message object of type '<LidarData>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:setf (cl:slot-value msg 'lidar_values) (cl:make-array 360))
  (cl:let ((vals (cl:slot-value msg 'lidar_values)))
    (cl:dotimes (i 360)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'additional_data) (cl:make-array 8))
  (cl:let ((vals (cl:slot-value msg 'additional_data)))
    (cl:dotimes (i 8)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LidarData>)))
  "Returns string type for a message object of type '<LidarData>"
  "my_custom_msgs/LidarData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LidarData)))
  "Returns string type for a message object of type 'LidarData"
  "my_custom_msgs/LidarData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LidarData>)))
  "Returns md5sum for a message object of type '<LidarData>"
  "fb0d95f66fac873e7d29547736862403")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LidarData)))
  "Returns md5sum for a message object of type 'LidarData"
  "fb0d95f66fac873e7d29547736862403")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LidarData>)))
  "Returns full string definition for message of type '<LidarData>"
  (cl:format cl:nil "Header header~%float32[360] lidar_values~%string[8] additional_data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LidarData)))
  "Returns full string definition for message of type 'LidarData"
  (cl:format cl:nil "Header header~%float32[360] lidar_values~%string[8] additional_data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LidarData>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'lidar_values) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'additional_data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LidarData>))
  "Converts a ROS message object to a list"
  (cl:list 'LidarData
    (cl:cons ':header (header msg))
    (cl:cons ':lidar_values (lidar_values msg))
    (cl:cons ':additional_data (additional_data msg))
))
