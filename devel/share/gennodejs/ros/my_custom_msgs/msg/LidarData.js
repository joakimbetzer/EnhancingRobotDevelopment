// Auto-generated. Do not edit!

// (in-package my_custom_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class LidarData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.lidar_values = null;
      this.additional_data = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('lidar_values')) {
        this.lidar_values = initObj.lidar_values
      }
      else {
        this.lidar_values = new Array(360).fill(0);
      }
      if (initObj.hasOwnProperty('additional_data')) {
        this.additional_data = initObj.additional_data
      }
      else {
        this.additional_data = new Array(8).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LidarData
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Check that the constant length array field [lidar_values] has the right length
    if (obj.lidar_values.length !== 360) {
      throw new Error('Unable to serialize array field lidar_values - length must be 360')
    }
    // Serialize message field [lidar_values]
    bufferOffset = _arraySerializer.float32(obj.lidar_values, buffer, bufferOffset, 360);
    // Check that the constant length array field [additional_data] has the right length
    if (obj.additional_data.length !== 8) {
      throw new Error('Unable to serialize array field additional_data - length must be 8')
    }
    // Serialize message field [additional_data]
    bufferOffset = _arraySerializer.string(obj.additional_data, buffer, bufferOffset, 8);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LidarData
    let len;
    let data = new LidarData(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [lidar_values]
    data.lidar_values = _arrayDeserializer.float32(buffer, bufferOffset, 360)
    // Deserialize message field [additional_data]
    data.additional_data = _arrayDeserializer.string(buffer, bufferOffset, 8)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.additional_data.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 1440;
  }

  static datatype() {
    // Returns string type for a message object
    return 'my_custom_msgs/LidarData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fb0d95f66fac873e7d29547736862403';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LidarData(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.lidar_values !== undefined) {
      resolved.lidar_values = msg.lidar_values;
    }
    else {
      resolved.lidar_values = new Array(360).fill(0)
    }

    if (msg.additional_data !== undefined) {
      resolved.additional_data = msg.additional_data;
    }
    else {
      resolved.additional_data = new Array(8).fill(0)
    }

    return resolved;
    }
};

module.exports = LidarData;
