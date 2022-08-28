; Auto-generated. Do not edit!


(cl:in-package dds_application-srv)


;//! \htmlinclude Calculator-request.msg.html

(cl:defclass <Calculator-request> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type cl:integer
    :initform 0)
   (b
    :reader b
    :initarg :b
    :type cl:integer
    :initform 0)
   (operation
    :reader operation
    :initarg :operation
    :type cl:string
    :initform ""))
)

(cl:defclass Calculator-request (<Calculator-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Calculator-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Calculator-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dds_application-srv:<Calculator-request> is deprecated: use dds_application-srv:Calculator-request instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <Calculator-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dds_application-srv:a-val is deprecated.  Use dds_application-srv:a instead.")
  (a m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <Calculator-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dds_application-srv:b-val is deprecated.  Use dds_application-srv:b instead.")
  (b m))

(cl:ensure-generic-function 'operation-val :lambda-list '(m))
(cl:defmethod operation-val ((m <Calculator-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dds_application-srv:operation-val is deprecated.  Use dds_application-srv:operation instead.")
  (operation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Calculator-request>) ostream)
  "Serializes a message object of type '<Calculator-request>"
  (cl:let* ((signed (cl:slot-value msg 'a)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'b)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'operation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'operation))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Calculator-request>) istream)
  "Deserializes a message object of type '<Calculator-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'a) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'b) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'operation) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'operation) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Calculator-request>)))
  "Returns string type for a service object of type '<Calculator-request>"
  "dds_application/CalculatorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Calculator-request)))
  "Returns string type for a service object of type 'Calculator-request"
  "dds_application/CalculatorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Calculator-request>)))
  "Returns md5sum for a message object of type '<Calculator-request>"
  "df0f91cc6ce6776a62af7328625fb3c8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Calculator-request)))
  "Returns md5sum for a message object of type 'Calculator-request"
  "df0f91cc6ce6776a62af7328625fb3c8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Calculator-request>)))
  "Returns full string definition for message of type '<Calculator-request>"
  (cl:format cl:nil "int64 a~%int64 b~%string operation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Calculator-request)))
  "Returns full string definition for message of type 'Calculator-request"
  (cl:format cl:nil "int64 a~%int64 b~%string operation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Calculator-request>))
  (cl:+ 0
     8
     8
     4 (cl:length (cl:slot-value msg 'operation))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Calculator-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Calculator-request
    (cl:cons ':a (a msg))
    (cl:cons ':b (b msg))
    (cl:cons ':operation (operation msg))
))
;//! \htmlinclude Calculator-response.msg.html

(cl:defclass <Calculator-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass Calculator-response (<Calculator-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Calculator-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Calculator-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dds_application-srv:<Calculator-response> is deprecated: use dds_application-srv:Calculator-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <Calculator-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dds_application-srv:result-val is deprecated.  Use dds_application-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Calculator-response>) ostream)
  "Serializes a message object of type '<Calculator-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Calculator-response>) istream)
  "Deserializes a message object of type '<Calculator-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Calculator-response>)))
  "Returns string type for a service object of type '<Calculator-response>"
  "dds_application/CalculatorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Calculator-response)))
  "Returns string type for a service object of type 'Calculator-response"
  "dds_application/CalculatorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Calculator-response>)))
  "Returns md5sum for a message object of type '<Calculator-response>"
  "df0f91cc6ce6776a62af7328625fb3c8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Calculator-response)))
  "Returns md5sum for a message object of type 'Calculator-response"
  "df0f91cc6ce6776a62af7328625fb3c8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Calculator-response>)))
  "Returns full string definition for message of type '<Calculator-response>"
  (cl:format cl:nil "int64 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Calculator-response)))
  "Returns full string definition for message of type 'Calculator-response"
  (cl:format cl:nil "int64 result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Calculator-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Calculator-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Calculator-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Calculator)))
  'Calculator-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Calculator)))
  'Calculator-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Calculator)))
  "Returns string type for a service object of type '<Calculator>"
  "dds_application/Calculator")