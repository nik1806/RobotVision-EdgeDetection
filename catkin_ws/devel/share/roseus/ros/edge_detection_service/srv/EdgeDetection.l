;; Auto-generated. Do not edit!


(when (boundp 'edge_detection_service::EdgeDetection)
  (if (not (find-package "EDGE_DETECTION_SERVICE"))
    (make-package "EDGE_DETECTION_SERVICE"))
  (shadow 'EdgeDetection (find-package "EDGE_DETECTION_SERVICE")))
(unless (find-package "EDGE_DETECTION_SERVICE::EDGEDETECTION")
  (make-package "EDGE_DETECTION_SERVICE::EDGEDETECTION"))
(unless (find-package "EDGE_DETECTION_SERVICE::EDGEDETECTIONREQUEST")
  (make-package "EDGE_DETECTION_SERVICE::EDGEDETECTIONREQUEST"))
(unless (find-package "EDGE_DETECTION_SERVICE::EDGEDETECTIONRESPONSE")
  (make-package "EDGE_DETECTION_SERVICE::EDGEDETECTIONRESPONSE"))

(in-package "ROS")

(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))




(defclass edge_detection_service::EdgeDetectionRequest
  :super ros::object
  :slots (_input_image _edge_image ))

(defmethod edge_detection_service::EdgeDetectionRequest
  (:init
   (&key
    ((:input_image __input_image) (instance sensor_msgs::Image :init))
    ((:edge_image __edge_image) (instance sensor_msgs::Image :init))
    )
   (send-super :init)
   (setq _input_image __input_image)
   (setq _edge_image __edge_image)
   self)
  (:input_image
   (&rest __input_image)
   (if (keywordp (car __input_image))
       (send* _input_image __input_image)
     (progn
       (if __input_image (setq _input_image (car __input_image)))
       _input_image)))
  (:edge_image
   (&rest __edge_image)
   (if (keywordp (car __edge_image))
       (send* _edge_image __edge_image)
     (progn
       (if __edge_image (setq _edge_image (car __edge_image)))
       _edge_image)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/Image _input_image
    (send _input_image :serialization-length)
    ;; sensor_msgs/Image _edge_image
    (send _edge_image :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/Image _input_image
       (send _input_image :serialize s)
     ;; sensor_msgs/Image _edge_image
       (send _edge_image :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/Image _input_image
     (send _input_image :deserialize buf ptr-) (incf ptr- (send _input_image :serialization-length))
   ;; sensor_msgs/Image _edge_image
     (send _edge_image :deserialize buf ptr-) (incf ptr- (send _edge_image :serialization-length))
   ;;
   self)
  )

(defclass edge_detection_service::EdgeDetectionResponse
  :super ros::object
  :slots ())

(defmethod edge_detection_service::EdgeDetectionResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass edge_detection_service::EdgeDetection
  :super ros::object
  :slots ())

(setf (get edge_detection_service::EdgeDetection :md5sum-) "544ac8dfe4746ee920a8bc72050eac6c")
(setf (get edge_detection_service::EdgeDetection :datatype-) "edge_detection_service/EdgeDetection")
(setf (get edge_detection_service::EdgeDetection :request) edge_detection_service::EdgeDetectionRequest)
(setf (get edge_detection_service::EdgeDetection :response) edge_detection_service::EdgeDetectionResponse)

(defmethod edge_detection_service::EdgeDetectionRequest
  (:response () (instance edge_detection_service::EdgeDetectionResponse :init)))

(setf (get edge_detection_service::EdgeDetectionRequest :md5sum-) "544ac8dfe4746ee920a8bc72050eac6c")
(setf (get edge_detection_service::EdgeDetectionRequest :datatype-) "edge_detection_service/EdgeDetectionRequest")
(setf (get edge_detection_service::EdgeDetectionRequest :definition-)
      "sensor_msgs/Image input_image
sensor_msgs/Image edge_image

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

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
---
")

(setf (get edge_detection_service::EdgeDetectionResponse :md5sum-) "544ac8dfe4746ee920a8bc72050eac6c")
(setf (get edge_detection_service::EdgeDetectionResponse :datatype-) "edge_detection_service/EdgeDetectionResponse")
(setf (get edge_detection_service::EdgeDetectionResponse :definition-)
      "sensor_msgs/Image input_image
sensor_msgs/Image edge_image

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

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
---
")



(provide :edge_detection_service/EdgeDetection "544ac8dfe4746ee920a8bc72050eac6c")


