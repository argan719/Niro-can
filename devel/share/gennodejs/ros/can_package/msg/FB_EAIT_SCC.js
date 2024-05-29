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

class FB_EAIT_SCC {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ACC_control_state = null;
      this.EPS_En_FB = null;
      this.Override_ACC_state = null;
      this.Override_BRK_state = null;
      this.Vehicle_speed = null;
      this.AEB_state = null;
      this.Long_Accel = null;
      this.Gear_Disp = null;
    }
    else {
      if (initObj.hasOwnProperty('ACC_control_state')) {
        this.ACC_control_state = initObj.ACC_control_state
      }
      else {
        this.ACC_control_state = 0;
      }
      if (initObj.hasOwnProperty('EPS_En_FB')) {
        this.EPS_En_FB = initObj.EPS_En_FB
      }
      else {
        this.EPS_En_FB = false;
      }
      if (initObj.hasOwnProperty('Override_ACC_state')) {
        this.Override_ACC_state = initObj.Override_ACC_state
      }
      else {
        this.Override_ACC_state = false;
      }
      if (initObj.hasOwnProperty('Override_BRK_state')) {
        this.Override_BRK_state = initObj.Override_BRK_state
      }
      else {
        this.Override_BRK_state = false;
      }
      if (initObj.hasOwnProperty('Vehicle_speed')) {
        this.Vehicle_speed = initObj.Vehicle_speed
      }
      else {
        this.Vehicle_speed = 0;
      }
      if (initObj.hasOwnProperty('AEB_state')) {
        this.AEB_state = initObj.AEB_state
      }
      else {
        this.AEB_state = false;
      }
      if (initObj.hasOwnProperty('Long_Accel')) {
        this.Long_Accel = initObj.Long_Accel
      }
      else {
        this.Long_Accel = 0.0;
      }
      if (initObj.hasOwnProperty('Gear_Disp')) {
        this.Gear_Disp = initObj.Gear_Disp
      }
      else {
        this.Gear_Disp = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FB_EAIT_SCC
    // Serialize message field [ACC_control_state]
    bufferOffset = _serializer.uint8(obj.ACC_control_state, buffer, bufferOffset);
    // Serialize message field [EPS_En_FB]
    bufferOffset = _serializer.bool(obj.EPS_En_FB, buffer, bufferOffset);
    // Serialize message field [Override_ACC_state]
    bufferOffset = _serializer.bool(obj.Override_ACC_state, buffer, bufferOffset);
    // Serialize message field [Override_BRK_state]
    bufferOffset = _serializer.bool(obj.Override_BRK_state, buffer, bufferOffset);
    // Serialize message field [Vehicle_speed]
    bufferOffset = _serializer.uint8(obj.Vehicle_speed, buffer, bufferOffset);
    // Serialize message field [AEB_state]
    bufferOffset = _serializer.bool(obj.AEB_state, buffer, bufferOffset);
    // Serialize message field [Long_Accel]
    bufferOffset = _serializer.float32(obj.Long_Accel, buffer, bufferOffset);
    // Serialize message field [Gear_Disp]
    bufferOffset = _serializer.uint8(obj.Gear_Disp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FB_EAIT_SCC
    let len;
    let data = new FB_EAIT_SCC(null);
    // Deserialize message field [ACC_control_state]
    data.ACC_control_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [EPS_En_FB]
    data.EPS_En_FB = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [Override_ACC_state]
    data.Override_ACC_state = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [Override_BRK_state]
    data.Override_BRK_state = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [Vehicle_speed]
    data.Vehicle_speed = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [AEB_state]
    data.AEB_state = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [Long_Accel]
    data.Long_Accel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Gear_Disp]
    data.Gear_Disp = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 11;
  }

  static datatype() {
    // Returns string type for a message object
    return 'can_package/FB_EAIT_SCC';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c259b215cb428509acd187f1b6939bc1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    uint8 ACC_control_state  # 0|4@1+ (1,0) [0|10]
    bool EPS_En_FB           # 4|1@1+ (1,0) [0|1]
    bool Override_ACC_state  # 6|1@1+ (1,0) [0|1]
    bool Override_BRK_state  # 7|1@1+ (1,0) [0|1]
    uint8 Vehicle_speed      # 8|8@1+ (1,0) [0|255] kph
    bool AEB_state           # 5|1@1+ (1,0) [0|1]
    float32 Long_Accel       # 16|16@1+ (0.000127465,-4.17677312) [-4.17677312|4.176645655] m/s^2
    uint8 Gear_Disp          # 32|4@1+ (1,0) [0|15]
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FB_EAIT_SCC(null);
    if (msg.ACC_control_state !== undefined) {
      resolved.ACC_control_state = msg.ACC_control_state;
    }
    else {
      resolved.ACC_control_state = 0
    }

    if (msg.EPS_En_FB !== undefined) {
      resolved.EPS_En_FB = msg.EPS_En_FB;
    }
    else {
      resolved.EPS_En_FB = false
    }

    if (msg.Override_ACC_state !== undefined) {
      resolved.Override_ACC_state = msg.Override_ACC_state;
    }
    else {
      resolved.Override_ACC_state = false
    }

    if (msg.Override_BRK_state !== undefined) {
      resolved.Override_BRK_state = msg.Override_BRK_state;
    }
    else {
      resolved.Override_BRK_state = false
    }

    if (msg.Vehicle_speed !== undefined) {
      resolved.Vehicle_speed = msg.Vehicle_speed;
    }
    else {
      resolved.Vehicle_speed = 0
    }

    if (msg.AEB_state !== undefined) {
      resolved.AEB_state = msg.AEB_state;
    }
    else {
      resolved.AEB_state = false
    }

    if (msg.Long_Accel !== undefined) {
      resolved.Long_Accel = msg.Long_Accel;
    }
    else {
      resolved.Long_Accel = 0.0
    }

    if (msg.Gear_Disp !== undefined) {
      resolved.Gear_Disp = msg.Gear_Disp;
    }
    else {
      resolved.Gear_Disp = 0
    }

    return resolved;
    }
};

module.exports = FB_EAIT_SCC;
