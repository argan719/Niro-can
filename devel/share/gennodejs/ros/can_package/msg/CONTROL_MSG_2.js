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

class CONTROL_MSG_2 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.EPS_command = null;
      this.SCC_command = null;
    }
    else {
      if (initObj.hasOwnProperty('EPS_command')) {
        this.EPS_command = initObj.EPS_command
      }
      else {
        this.EPS_command = 0;
      }
      if (initObj.hasOwnProperty('SCC_command')) {
        this.SCC_command = initObj.SCC_command
      }
      else {
        this.SCC_command = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CONTROL_MSG_2
    // Serialize message field [EPS_command]
    bufferOffset = _serializer.int16(obj.EPS_command, buffer, bufferOffset);
    // Serialize message field [SCC_command]
    bufferOffset = _serializer.uint16(obj.SCC_command, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CONTROL_MSG_2
    let len;
    let data = new CONTROL_MSG_2(null);
    // Deserialize message field [EPS_command]
    data.EPS_command = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [SCC_command]
    data.SCC_command = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'can_package/CONTROL_MSG_2';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7868707315b8b995234d9673967cb406';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 EPS_command
    uint16 SCC_command
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CONTROL_MSG_2(null);
    if (msg.EPS_command !== undefined) {
      resolved.EPS_command = msg.EPS_command;
    }
    else {
      resolved.EPS_command = 0
    }

    if (msg.SCC_command !== undefined) {
      resolved.SCC_command = msg.SCC_command;
    }
    else {
      resolved.SCC_command = 0
    }

    return resolved;
    }
};

module.exports = CONTROL_MSG_2;
