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

class FB_EAIT_ETC {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.acc_pedal_percent = null;
      this.brk_pedal_percent = null;
      this.turn_sig = null;
      this.LCS_button_sig = null;
      this.Limit_sig = null;
      this.Cruise_buttons_sig = null;
    }
    else {
      if (initObj.hasOwnProperty('acc_pedal_percent')) {
        this.acc_pedal_percent = initObj.acc_pedal_percent
      }
      else {
        this.acc_pedal_percent = 0;
      }
      if (initObj.hasOwnProperty('brk_pedal_percent')) {
        this.brk_pedal_percent = initObj.brk_pedal_percent
      }
      else {
        this.brk_pedal_percent = 0;
      }
      if (initObj.hasOwnProperty('turn_sig')) {
        this.turn_sig = initObj.turn_sig
      }
      else {
        this.turn_sig = 0;
      }
      if (initObj.hasOwnProperty('LCS_button_sig')) {
        this.LCS_button_sig = initObj.LCS_button_sig
      }
      else {
        this.LCS_button_sig = false;
      }
      if (initObj.hasOwnProperty('Limit_sig')) {
        this.Limit_sig = initObj.Limit_sig
      }
      else {
        this.Limit_sig = false;
      }
      if (initObj.hasOwnProperty('Cruise_buttons_sig')) {
        this.Cruise_buttons_sig = initObj.Cruise_buttons_sig
      }
      else {
        this.Cruise_buttons_sig = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FB_EAIT_ETC
    // Serialize message field [acc_pedal_percent]
    bufferOffset = _serializer.uint16(obj.acc_pedal_percent, buffer, bufferOffset);
    // Serialize message field [brk_pedal_percent]
    bufferOffset = _serializer.uint16(obj.brk_pedal_percent, buffer, bufferOffset);
    // Serialize message field [turn_sig]
    bufferOffset = _serializer.uint8(obj.turn_sig, buffer, bufferOffset);
    // Serialize message field [LCS_button_sig]
    bufferOffset = _serializer.bool(obj.LCS_button_sig, buffer, bufferOffset);
    // Serialize message field [Limit_sig]
    bufferOffset = _serializer.bool(obj.Limit_sig, buffer, bufferOffset);
    // Serialize message field [Cruise_buttons_sig]
    bufferOffset = _serializer.uint8(obj.Cruise_buttons_sig, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FB_EAIT_ETC
    let len;
    let data = new FB_EAIT_ETC(null);
    // Deserialize message field [acc_pedal_percent]
    data.acc_pedal_percent = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [brk_pedal_percent]
    data.brk_pedal_percent = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [turn_sig]
    data.turn_sig = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [LCS_button_sig]
    data.LCS_button_sig = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [Limit_sig]
    data.Limit_sig = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [Cruise_buttons_sig]
    data.Cruise_buttons_sig = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'can_package/FB_EAIT_ETC';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'adf0c54b44ed0a214b3be3c2060de9bb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    uint16 acc_pedal_percent     # 0|16@1+ (1,0) [0|2000] %
    uint16 brk_pedal_percent     # 16|16@1+ (1,0) [0|2000] %
    uint8 turn_sig               # 32|8@1+ (1,0) [0|0]
    bool LCS_button_sig          # 47|1@1+ (1,0) [0|0]
    bool Limit_sig               # 45|1@1+ (1,0) [0|0]
    uint8 Cruise_buttons_sig     # 40|4@1+ (1,0) [0|0]
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FB_EAIT_ETC(null);
    if (msg.acc_pedal_percent !== undefined) {
      resolved.acc_pedal_percent = msg.acc_pedal_percent;
    }
    else {
      resolved.acc_pedal_percent = 0
    }

    if (msg.brk_pedal_percent !== undefined) {
      resolved.brk_pedal_percent = msg.brk_pedal_percent;
    }
    else {
      resolved.brk_pedal_percent = 0
    }

    if (msg.turn_sig !== undefined) {
      resolved.turn_sig = msg.turn_sig;
    }
    else {
      resolved.turn_sig = 0
    }

    if (msg.LCS_button_sig !== undefined) {
      resolved.LCS_button_sig = msg.LCS_button_sig;
    }
    else {
      resolved.LCS_button_sig = false
    }

    if (msg.Limit_sig !== undefined) {
      resolved.Limit_sig = msg.Limit_sig;
    }
    else {
      resolved.Limit_sig = false
    }

    if (msg.Cruise_buttons_sig !== undefined) {
      resolved.Cruise_buttons_sig = msg.Cruise_buttons_sig;
    }
    else {
      resolved.Cruise_buttons_sig = 0
    }

    return resolved;
    }
};

module.exports = FB_EAIT_ETC;
