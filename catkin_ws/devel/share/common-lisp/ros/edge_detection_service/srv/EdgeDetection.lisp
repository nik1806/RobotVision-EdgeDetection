; Auto-generated. Do not edit!


(cl:in-package edge_detection_service-srv)


;//! \htmlinclude EdgeDetection-request.msg.html

(cl:defclass <EdgeDetection-request> (roslisp-msg-protocol:ros-message)
  ((input_image
    :reader input_image
    :initarg :input_image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (edge_image
    :reader edge_image
    :initarg :edge_image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image)))
)

(cl:defclass EdgeDetection-request (<EdgeDetection-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EdgeDetection-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EdgeDetection-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name edge_detection_service-srv:<EdgeDetection-request> is deprecated: use edge_detection_service-srv:EdgeDetection-request instead.")))

(cl:ensure-generic-function 'input_image-val :lambda-list '(m))
(cl:defmethod input_image-val ((m <EdgeDetection-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader edge_detection_service-srv:input_image-val is deprecated.  Use edge_detection_service-srv:input_image instead.")
  (input_image m))

(cl:ensure-generic-function 'edge_image-val :lambda-list '(m))
(cl:defmethod edge_image-val ((m <EdgeDetection-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader edge_detection_service-srv:edge_image-val is deprecated.  Use edge_detection_service-srv:edge_image instead.")
  (edge_image m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EdgeDetection-request>) ostream)
  "Serializes a message object of type '<EdgeDetection-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'input_image) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'edge_image) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EdgeDetection-request>) istream)
  "Deserializes a message object of type '<EdgeDetection-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'input_image) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'edge_image) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EdgeDetection-request>)))
  "Returns string type for a service object of type '<EdgeDetection-request>"
  "edge_detection_service/EdgeDetectionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EdgeDetection-request)))
  "Returns string type for a service object of type 'EdgeDetection-request"
  "edge_detection_service/EdgeDetectionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EdgeDetection-request>)))
  "Returns md5sum for a message object of type '<EdgeDetection-request>"
  "544ac8dfe4746ee920a8bc72050eac6c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EdgeDetection-request)))
  "Returns md5sum for a message object of type 'EdgeDetection-request"
  "544ac8dfe4746ee920a8bc72050eac6c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EdgeDetection-request>)))
  "Returns full string definition for message of type '<EdgeDetection-request>"
  (cl:format cl:nil "sensor_msgs/Image input_image~%sensor_msgs/Image edge_image~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EdgeDetection-request)))
  "Returns full string definition for message of type 'EdgeDetection-request"
  (cl:format cl:nil "sensor_msgs/Image input_image~%sensor_msgs/Image edge_image~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EdgeDetection-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'input_image))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'edge_image))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EdgeDetection-request>))
  "Converts a ROS message object to a list"
  (cl:list 'EdgeDetection-request
    (cl:cons ':input_image (input_image msg))
    (cl:cons ':edge_image (edge_image msg))
))
;//! \htmlinclude EdgeDetection-response.msg.html

(cl:defclass <EdgeDetection-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass EdgeDetection-response (<EdgeDetection-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EdgeDetection-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EdgeDetection-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name edge_detection_service-srv:<EdgeDetection-response> is deprecated: use edge_detection_service-srv:EdgeDetection-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EdgeDetection-response>) ostream)
  "Serializes a message object of type '<EdgeDetection-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EdgeDetection-response>) istream)
  "Deserializes a message object of type '<EdgeDetection-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EdgeDetection-response>)))
  "Returns string type for a service object of type '<EdgeDetection-response>"
  "edge_detection_service/EdgeDetectionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EdgeDetection-response)))
  "Returns string type for a service object of type 'EdgeDetection-response"
  "edge_detection_service/EdgeDetectionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EdgeDetection-response>)))
  "Returns md5sum for a message object of type '<EdgeDetection-response>"
  "544ac8dfe4746ee920a8bc72050eac6c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EdgeDetection-response)))
  "Returns md5sum for a message object of type 'EdgeDetection-response"
  "544ac8dfe4746ee920a8bc72050eac6c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EdgeDetection-response>)))
  "Returns full string definition for message of type '<EdgeDetection-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EdgeDetection-response)))
  "Returns full string definition for message of type 'EdgeDetection-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EdgeDetection-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EdgeDetection-response>))
  "Converts a ROS message object to a list"
  (cl:list 'EdgeDetection-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'EdgeDetection)))
  'EdgeDetection-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'EdgeDetection)))
  'EdgeDetection-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EdgeDetection)))
  "Returns string type for a service object of type '<EdgeDetection>"
  "edge_detection_service/EdgeDetection")