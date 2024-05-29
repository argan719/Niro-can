// Auto-generated. Do not edit!

// (in-package can_package.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class FB_EAIT_SPD {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.WHL_SPD_FL = null;
      this.WHL_SPD_FR = null;
      this.WHL_SPD_RL = null;
      this.WHL_SPD_RR = null;
    }
    else {
      if (initObj.hasOwnProperty('WHL_SPD_FL')) {
        this.WHL_SPD_FL = initObj.WHL_SPD_FL
      }
      else {
        this.WHL_SPD_FL = 0;
      }
      if (initObj.hasOwnProperty('WHL_SPD_FR')) {
        this.WHL_SPD_FR = initObj.WHL_SPD_FR
      }
      else {
        this.WHL_SPD_FR = 0;
      }
      if (initObj.hasOwnProperty('WHL_SPD_RL')) {
        this.WHL_SPD_RL = initObj.WHL_SPD_RL
      }
      else {
        this.WHL_SPD_RL = 0;
      }
      if (initObj.hasOwnProperty('WHL_SPD_RR')) {
        this.WHL_SPD_RR = initObj.WHL_SPD_RR
      }
      else {
        this.WHL_SPD_RR = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FB_EAIT_SPD
    // Serialize message field [WHL_SPD_FL]
    bufferOffset = _serializer.uint16(obj.WHL_SPD_FL, buffer, bufferOffset);
    // Serialize message field [WHL_SPD_FR]
    bufferOffset = _serializer.uint16(obj.WHL_SPD_FR, buffer, bufferOffset);
    // Serialize message field [WHL_SPD_RL]
    bufferOffset = _serializer.uint16(obj.WHL_SPD_RL, buffer, bufferOffset);
    // Serialize message field [WHL_SPD_RR]
    bufferOffset = _serializer.uint16(obj.WHL_SPD_RR, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FB_EAIT_SPD
    let len;
    let data = new FB_EAIT_SPD(null);
    // Deserialize message field [WHL_SPD_FL]
    data.WHL_SPD_FL = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [WHL_SPD_FR]
    data.WHL_SPD_FR = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [WHL_SPD_RL]
    data.WHL_SPD_RL = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [WHL_SPD_RR]
    data.WHL_SPD_RR = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'can_package/FB_EAIT_SPD';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '942f3c288489605fdeb5cae068a7cd8a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    uint16 WHL_SPD_FL    # 0|14@1+ (0.03125,0) [0|511.96875]
    uint16 WHL_SPD_FR    # 16|14@1+ (0.03125,0) [0|511.96875]
    uint16 WHL_SPD_RL    # 32|14@1+ (0.03125,0) [0|511.96875]
    uint16 WHL_SPD_RR    # 48|14@1+ (0.03125,0) [0|511.96875]
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FB_EAIT_SPD(null);
    if (msg.WHL_SPD_FL !== undefined) {
      resolved.WHL_SPD_FL = msg.WHL_SPD_FL;
    }
    else {
      resolved.WHL_SPD_FL = 0
    }

    if (msg.WHL_SPD_FR !== undefined) {
      resolved.WHL_SPD_FR = msg.WHL_SPD_FR;
    }
    else {
      resolved.WHL_SPD_FR = 0
    }

    if (msg.WHL_SPD_RL !== undefined) {
      resolved.WHL_SPD_RL = msg.WHL_SPD_RL;
    }
    else {
      resolved.WHL_SPD_RL = 0
    }

    if (msg.WHL_SPD_RR !== undefined) {
      resolved.WHL_SPD_RR = msg.WHL_SPD_RR;
    }
    else {
      resolved.WHL_SPD_RR = 0
    }

    return resolved;
    }
};

module.exports = FB_EAIT_SPD;
