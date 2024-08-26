// Auto-generated. Do not edit!

// (in-package my_custom_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class JsonMessage {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp = null;
      this.expectedSpeed = null;
      this.actualSpeed = null;
    }
    else {
      if (initObj.hasOwnProperty('timestamp')) {
        this.timestamp = initObj.timestamp
      }
      else {
        this.timestamp = 0.0;
      }
      if (initObj.hasOwnProperty('expectedSpeed')) {
        this.expectedSpeed = initObj.expectedSpeed
      }
      else {
        this.expectedSpeed = '';
      }
      if (initObj.hasOwnProperty('actualSpeed')) {
        this.actualSpeed = initObj.actualSpeed
      }
      else {
        this.actualSpeed = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JsonMessage
    // Serialize message field [timestamp]
    bufferOffset = _serializer.float32(obj.timestamp, buffer, bufferOffset);
    // Serialize message field [expectedSpeed]
    bufferOffset = _serializer.string(obj.expectedSpeed, buffer, bufferOffset);
    // Serialize message field [actualSpeed]
    bufferOffset = _serializer.string(obj.actualSpeed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JsonMessage
    let len;
    let data = new JsonMessage(null);
    // Deserialize message field [timestamp]
    data.timestamp = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [expectedSpeed]
    data.expectedSpeed = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [actualSpeed]
    data.actualSpeed = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.expectedSpeed.length;
    length += object.actualSpeed.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'my_custom_msgs/JsonMessage';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0fb49a7ad0c83707de55ce5897673f5c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 timestamp
    string expectedSpeed
    string actualSpeed
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JsonMessage(null);
    if (msg.timestamp !== undefined) {
      resolved.timestamp = msg.timestamp;
    }
    else {
      resolved.timestamp = 0.0
    }

    if (msg.expectedSpeed !== undefined) {
      resolved.expectedSpeed = msg.expectedSpeed;
    }
    else {
      resolved.expectedSpeed = ''
    }

    if (msg.actualSpeed !== undefined) {
      resolved.actualSpeed = msg.actualSpeed;
    }
    else {
      resolved.actualSpeed = ''
    }

    return resolved;
    }
};

module.exports = JsonMessage;
