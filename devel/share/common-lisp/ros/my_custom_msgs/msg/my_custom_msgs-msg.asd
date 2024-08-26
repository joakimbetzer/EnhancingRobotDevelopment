
(cl:in-package :asdf)

(defsystem "my_custom_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "JsonMessage" :depends-on ("_package_JsonMessage"))
    (:file "_package_JsonMessage" :depends-on ("_package"))
    (:file "LidarData" :depends-on ("_package_LidarData"))
    (:file "_package_LidarData" :depends-on ("_package"))
  ))