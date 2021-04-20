// Auto-generated. Do not edit!

// (in-package darknet_ros_zed.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class coordinate_msgs {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
      this.depth = null;
      this.probability = null;
      this.className = null;
    }
    else {
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('depth')) {
        this.depth = initObj.depth
      }
      else {
        this.depth = 0.0;
      }
      if (initObj.hasOwnProperty('probability')) {
        this.probability = initObj.probability
      }
      else {
        this.probability = 0.0;
      }
      if (initObj.hasOwnProperty('className')) {
        this.className = initObj.className
      }
      else {
        this.className = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type coordinate_msgs
    // Serialize message field [x]
    bufferOffset = _serializer.float64(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float64(obj.y, buffer, bufferOffset);
    // Serialize message field [depth]
    bufferOffset = _serializer.float64(obj.depth, buffer, bufferOffset);
    // Serialize message field [probability]
    bufferOffset = _serializer.float64(obj.probability, buffer, bufferOffset);
    // Serialize message field [className]
    bufferOffset = _serializer.string(obj.className, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type coordinate_msgs
    let len;
    let data = new coordinate_msgs(null);
    // Deserialize message field [x]
    data.x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [depth]
    data.depth = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [probability]
    data.probability = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [className]
    data.className = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.className.length;
    return length + 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'darknet_ros_zed/coordinate_msgs';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2020fc069dbb4fb7790c96426024b2f9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 x
    float64 y
    float64 depth
    float64 probability
    string className
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new coordinate_msgs(null);
    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.depth !== undefined) {
      resolved.depth = msg.depth;
    }
    else {
      resolved.depth = 0.0
    }

    if (msg.probability !== undefined) {
      resolved.probability = msg.probability;
    }
    else {
      resolved.probability = 0.0
    }

    if (msg.className !== undefined) {
      resolved.className = msg.className;
    }
    else {
      resolved.className = ''
    }

    return resolved;
    }
};

module.exports = coordinate_msgs;
