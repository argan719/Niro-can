// Auto-generated. Do not edit!

// (in-package joystick.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class control_msg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.EPS_en = null;
      this.ControlSW = null;
      this.EPS_Interval = null;
      this.SCC_En = null;
      this.AEB_Act = null;
      this.AEB_decel_value = null;
      this.Alive_count = null;
      this.SCC_value = null;
      this.EPS_value = null;
    }
    else {
      if (initObj.hasOwnProperty('EPS_en')) {
        this.EPS_en = initObj.EPS_en
      }
      else {
        this.EPS_en = 0;
      }
      if (initObj.hasOwnProperty('ControlSW')) {
        this.ControlSW = initObj.ControlSW
      }
      else {
        this.ControlSW = 0;
      }
      if (initObj.hasOwnProperty('EPS_Interval')) {
        this.EPS_Interval = initObj.EPS_Interval
      }
      else {
        this.EPS_Interval = 0;
      }
      if (initObj.hasOwnProperty('SCC_En')) {
        this.SCC_En = initObj.SCC_En
      }
      else {
        this.SCC_En = 0;
      }
      if (initObj.hasOwnProperty('AEB_Act')) {
        this.AEB_Act = initObj.AEB_Act
      }
      else {
        this.AEB_Act = 0;
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
      if (initObj.hasOwnProperty('SCC_value')) {
        this.SCC_value = initObj.SCC_value
      }
      else {
        this.SCC_value = 0.0;
      }
      if (initObj.hasOwnProperty('EPS_value')) {
        this.EPS_value = initObj.EPS_value
      }
      else {
        this.EPS_value = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type control_msg
    // Serialize message field [EPS_en]
    bufferOffset = _serializer.uint8(obj.EPS_en, buffer, bufferOffset);
    // Serialize message field [ControlSW]
    bufferOffset = _serializer.uint8(obj.ControlSW, buffer, bufferOffset);
    // Serialize message field [EPS_Interval]
    bufferOffset = _serializer.uint8(obj.EPS_Interval, buffer, bufferOffset);
    // Serialize message field [SCC_En]
    bufferOffset = _serializer.uint8(obj.SCC_En, buffer, bufferOffset);
    // Serialize message field [AEB_Act]
    bufferOffset = _serializer.uint8(obj.AEB_Act, buffer, bufferOffset);
    // Serialize message field [AEB_decel_value]
    bufferOffset = _serializer.uint8(obj.AEB_decel_value, buffer, bufferOffset);
    // Serialize message field [Alive_count]
    bufferOffset = _serializer.uint8(obj.Alive_count, buffer, bufferOffset);
    // Serialize message field [SCC_value]
    bufferOffset = _serializer.float32(obj.SCC_value, buffer, bufferOffset);
    // Serialize message field [EPS_value]
    bufferOffset = _serializer.float32(obj.EPS_value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type control_msg
    let len;
    let data = new control_msg(null);
    // Deserialize message field [EPS_en]
    data.EPS_en = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ControlSW]
    data.ControlSW = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [EPS_Interval]
    data.EPS_Interval = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [SCC_En]
    data.SCC_En = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [AEB_Act]
    data.AEB_Act = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [AEB_decel_value]
    data.AEB_decel_value = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Alive_count]
    data.Alive_count = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [SCC_value]
    data.SCC_value = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [EPS_value]
    data.EPS_value = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 15;
  }

  static datatype() {
    // Returns string type for a message object
    return 'joystick/control_msg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4e1b84ccf5a5c6a0e362e2cdfaeae72d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 EPS_en
    uint8 ControlSW
    uint8 EPS_Interval
    uint8 SCC_En
    uint8 AEB_Act
    uint8 AEB_decel_value
    uint8 Alive_count
    float32 SCC_value
    float32 EPS_value
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new control_msg(null);
    if (msg.EPS_en !== undefined) {
      resolved.EPS_en = msg.EPS_en;
    }
    else {
      resolved.EPS_en = 0
    }

    if (msg.ControlSW !== undefined) {
      resolved.ControlSW = msg.ControlSW;
    }
    else {
      resolved.ControlSW = 0
    }

    if (msg.EPS_Interval !== undefined) {
      resolved.EPS_Interval = msg.EPS_Interval;
    }
    else {
      resolved.EPS_Interval = 0
    }

    if (msg.SCC_En !== undefined) {
      resolved.SCC_En = msg.SCC_En;
    }
    else {
      resolved.SCC_En = 0
    }

    if (msg.AEB_Act !== undefined) {
      resolved.AEB_Act = msg.AEB_Act;
    }
    else {
      resolved.AEB_Act = 0
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

    if (msg.SCC_value !== undefined) {
      resolved.SCC_value = msg.SCC_value;
    }
    else {
      resolved.SCC_value = 0.0
    }

    if (msg.EPS_value !== undefined) {
      resolved.EPS_value = msg.EPS_value;
    }
    else {
      resolved.EPS_value = 0.0
    }

    return resolved;
    }
};

module.exports = control_msg;
