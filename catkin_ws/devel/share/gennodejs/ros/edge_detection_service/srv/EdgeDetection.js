// Auto-generated. Do not edit!

// (in-package edge_detection_service.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class EdgeDetectionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.input_image = null;
      this.edge_image = null;
    }
    else {
      if (initObj.hasOwnProperty('input_image')) {
        this.input_image = initObj.input_image
      }
      else {
        this.input_image = new sensor_msgs.msg.Image();
      }
      if (initObj.hasOwnProperty('edge_image')) {
        this.edge_image = initObj.edge_image
      }
      else {
        this.edge_image = new sensor_msgs.msg.Image();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EdgeDetectionRequest
    // Serialize message field [input_image]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.input_image, buffer, bufferOffset);
    // Serialize message field [edge_image]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.edge_image, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EdgeDetectionRequest
    let len;
    let data = new EdgeDetectionRequest(null);
    // Deserialize message field [input_image]
    data.input_image = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    // Deserialize message field [edge_image]
    data.edge_image = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.Image.getMessageSize(object.input_image);
    length += sensor_msgs.msg.Image.getMessageSize(object.edge_image);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'edge_detection_service/EdgeDetectionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '544ac8dfe4746ee920a8bc72050eac6c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    sensor_msgs/Image input_image
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EdgeDetectionRequest(null);
    if (msg.input_image !== undefined) {
      resolved.input_image = sensor_msgs.msg.Image.Resolve(msg.input_image)
    }
    else {
      resolved.input_image = new sensor_msgs.msg.Image()
    }

    if (msg.edge_image !== undefined) {
      resolved.edge_image = sensor_msgs.msg.Image.Resolve(msg.edge_image)
    }
    else {
      resolved.edge_image = new sensor_msgs.msg.Image()
    }

    return resolved;
    }
};

class EdgeDetectionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EdgeDetectionResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EdgeDetectionResponse
    let len;
    let data = new EdgeDetectionResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'edge_detection_service/EdgeDetectionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EdgeDetectionResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: EdgeDetectionRequest,
  Response: EdgeDetectionResponse,
  md5sum() { return '544ac8dfe4746ee920a8bc72050eac6c'; },
  datatype() { return 'edge_detection_service/EdgeDetection'; }
};
