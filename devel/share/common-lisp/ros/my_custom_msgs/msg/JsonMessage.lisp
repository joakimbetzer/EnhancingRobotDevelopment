; Auto-generated. Do not edit!


(cl:in-package my_custom_msgs-msg)


;//! \htmlinclude JsonMessage.msg.html

(cl:defclass <JsonMessage> (roslisp-msg-protocol:ros-message)
  ((timestamp
    :reader timestamp
    :initarg :timestamp
    :type cl:float
    :initform 0.0)
   (expectedSpeed
    :reader expectedSpeed
    :initarg :expectedSpeed
    :type cl:string
    :initform "")
   (actualSpeed
    :reader actualSpeed
    :initarg :actualSpeed
    :type cl:string
    :initform ""))
)

(cl:defclass JsonMessage (<JsonMessage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JsonMessage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JsonMessage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_custom_msgs-msg:<JsonMessage> is deprecated: use my_custom_msgs-msg:JsonMessage instead.")))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <JsonMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_custom_msgs-msg:timestamp-val is deprecated.  Use my_custom_msgs-msg:timestamp instead.")
  (timestamp m))

(cl:ensure-generic-function 'expectedSpeed-val :lambda-list '(m))
(cl:defmethod expectedSpeed-val ((m <JsonMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_custom_msgs-msg:expectedSpeed-val is deprecated.  Use my_custom_msgs-msg:expectedSpeed instead.")
  (expectedSpeed m))

(cl:ensure-generic-function 'actualSpeed-val :lambda-list '(m))
(cl:defmethod actualSpeed-val ((m <JsonMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_custom_msgs-msg:actualSpeed-val is deprecated.  Use my_custom_msgs-msg:actualSpeed instead.")
  (actualSpeed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JsonMessage>) ostream)
  "Serializes a message object of type '<JsonMessage>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'timestamp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'expectedSpeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'expectedSpeed))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'actualSpeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'actualSpeed))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JsonMessage>) istream)
  "Deserializes a message object of type '<JsonMessage>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'timestamp) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'expectedSpeed) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'expectedSpeed) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'actualSpeed) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'actualSpeed) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JsonMessage>)))
  "Returns string type for a message object of type '<JsonMessage>"
  "my_custom_msgs/JsonMessage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JsonMessage)))
  "Returns string type for a message object of type 'JsonMessage"
  "my_custom_msgs/JsonMessage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JsonMessage>)))
  "Returns md5sum for a message object of type '<JsonMessage>"
  "0fb49a7ad0c83707de55ce5897673f5c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JsonMessage)))
  "Returns md5sum for a message object of type 'JsonMessage"
  "0fb49a7ad0c83707de55ce5897673f5c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JsonMessage>)))
  "Returns full string definition for message of type '<JsonMessage>"
  (cl:format cl:nil "float32 timestamp~%string expectedSpeed~%string actualSpeed~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JsonMessage)))
  "Returns full string definition for message of type 'JsonMessage"
  (cl:format cl:nil "float32 timestamp~%string expectedSpeed~%string actualSpeed~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JsonMessage>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'expectedSpeed))
     4 (cl:length (cl:slot-value msg 'actualSpeed))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JsonMessage>))
  "Converts a ROS message object to a list"
  (cl:list 'JsonMessage
    (cl:cons ':timestamp (timestamp msg))
    (cl:cons ':expectedSpeed (expectedSpeed msg))
    (cl:cons ':actualSpeed (actualSpeed msg))
))
