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

class CONTROL_MSG_1 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ControlSW = null;
      this.EPS_En = null;
      this.SCC_En = null;
      this.AEB_Act = null;
      this.EPS_Interval = null;
      this.AEB_decel_value = null;
      this.Alive_count = null;
    }
    else {
      if (initObj.hasOwnProperty('ControlSW')) {
        this.ControlSW = initObj.ControlSW
      }
      else {
        this.ControlSW = false;
      }
      if (initObj.hasOwnProperty('EPS_En')) {
        this.EPS_En = initObj.EPS_En
      }
      else {
        this.EPS_En = false;
      }
      if (initObj.hasOwnProperty('SCC_En')) {
        this.SCC_En = initObj.SCC_En
      }
      else {
        this.SCC_En = false;
      }
      if (initObj.hasOwnProperty('AEB_Act')) {
        this.AEB_Act = initObj.AEB_Act
      }
      else {
        this.AEB_Act = false;
      }
      if (initObj.hasOwnProperty('EPS_Interval')) {
        this.EPS_Interval = initObj.EPS_Interval
      }
      else {
        this.EPS_Interval = 0;
      }
      if (initObj.hasOwnProperty('AEB_decel_value')) {
        this.AEB_decel_value = initObj.AEB_decel_value
      }
      else {
        this.AEB_decel_value = 0;
      }
      if (initObj.hasOwnProperty('Alive_count')) {
        this.Alive_count = initObj.Alive_count
      }
      else {
        this.Alive_count = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CONTROL_MSG_1
    // Serialize message field [ControlSW]
    bufferOffset = _serializer.bool(obj.ControlSW, buffer, bufferOffset);
    // Serialize message field [EPS_En]
    bufferOffset = _serializer.bool(obj.EPS_En, buffer, bufferOffset);
    // Serialize message field [SCC_En]
    bufferOffset = _serializer.bool(obj.SCC_En, buffer, bufferOffset);
    // Serialize message field [AEB_Act]
    bufferOffset = _serializer.bool(obj.AEB_Act, buffer, bufferOffset);
    // Serialize message field [EPS_Interval]
    bufferOffset = _serializer.uint8(obj.EPS_Interval, buffer, bufferOffset);
    // Serialize message field [AEB_decel_value]
    bufferOffset = _serializer.uint8(obj.AEB_decel_value, buffer, bufferOffset);
    // Serialize message field [Alive_count]
    bufferOffset = _serializer.uint8(obj.Alive_count, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CONTROL_MSG_1
    let len;
    let data = new CONTROL_MSG_1(null);
    // Deserialize message field [ControlSW]
    data.ControlSW = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [EPS_En]
    data.EPS_En = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [SCC_En]
    data.SCC_En = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [AEB_Act]
    data.AEB_Act = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [EPS_Interval]
    data.EPS_Interval = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [AEB_decel_value]
    data.AEB_decel_value = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Alive_count]
    data.Alive_count = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 7;
  }

  static datatype() {
    // Returns string type for a message object
    return 'can_package/CONTROL_MSG_1';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '476713e91b4fe704c7741061e3ed1316';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool ControlSW
    bool EPS_En
    bool SCC_En
    bool AEB_Act
    uint8 EPS_Interval 
    uint8 AEB_decel_value
    uint8 Alive_count
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CONTROL_MSG_1(null);
    if (msg.ControlSW !== undefined) {
      resolved.ControlSW = msg.ControlSW;
    }
    else {
      resolved.ControlSW = false
    }

    if (msg.EPS_En !== undefined) {
      resolved.EPS_En = msg.EPS_En;
    }
    else {
      resolved.EPS_En = false
    }

    if (msg.SCC_En !== undefined) {
      resolved.SCC_En = msg.SCC_En;
    }
    else {
      resolved.SCC_En = false
    }

    if (msg.AEB_Act !== undefined) {
      resolved.AEB_Act = msg.AEB_Act;
    }
    else {
      resolved.AEB_Act = false
    }

    if (msg.EPS_Interval !== undefined) {
      resolved.EPS_Interval = msg.EPS_Interval;
    }
    else {
      resolved.EPS_Interval = 0
    }

    if (msg.AEB_decel_value !== undefined) {
      resolved.AEB_decel_value = msg.AEB_decel_value;
    }
    else {
      resolved.AEB_decel_value = 0
    }

    if (msg.Alive_count !== undefined) {
      resolved.Alive_count = msg.Alive_count;
    }
    else {
      resolved.Alive_count = 0
    }

    return resolved;
    }
};

module.exports = CONTROL_MSG_1;
