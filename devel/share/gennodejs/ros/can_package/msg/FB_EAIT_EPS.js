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

class FB_EAIT_EPS {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.EPS_En_FB = null;
      this.Override_state = null;
      this.EPS_control_state = null;
      this.Steering_angle = null;
      this.Control_SW_FB = null;
      this.Str_Tq_1 = null;
      this.Str_Tq_2 = null;
      this.FB_alive_count = null;
    }
    else {
      if (initObj.hasOwnProperty('EPS_En_FB')) {
        this.EPS_En_FB = initObj.EPS_En_FB
      }
      else {
        this.EPS_En_FB = false;
      }
      if (initObj.hasOwnProperty('Override_state')) {
        this.Override_state = initObj.Override_state
      }
      else {
        this.Override_state = false;
      }
      if (initObj.hasOwnProperty('EPS_control_state')) {
        this.EPS_control_state = initObj.EPS_control_state
      }
      else {
        this.EPS_control_state = 0;
      }
      if (initObj.hasOwnProperty('Steering_angle')) {
        this.Steering_angle = initObj.Steering_angle
      }
      else {
        this.Steering_angle = 0.0;
      }
      if (initObj.hasOwnProperty('Control_SW_FB')) {
        this.Control_SW_FB = initObj.Control_SW_FB
      }
      else {
        this.Control_SW_FB = false;
      }
      if (initObj.hasOwnProperty('Str_Tq_1')) {
        this.Str_Tq_1 = initObj.Str_Tq_1
      }
      else {
        this.Str_Tq_1 = 0;
      }
      if (initObj.hasOwnProperty('Str_Tq_2')) {
        this.Str_Tq_2 = initObj.Str_Tq_2
      }
      else {
        this.Str_Tq_2 = 0;
      }
      if (initObj.hasOwnProperty('FB_alive_count')) {
        this.FB_alive_count = initObj.FB_alive_count
      }
      else {
        this.FB_alive_count = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FB_EAIT_EPS
    // Serialize message field [EPS_En_FB]
    bufferOffset = _serializer.bool(obj.EPS_En_FB, buffer, bufferOffset);
    // Serialize message field [Override_state]
    bufferOffset = _serializer.bool(obj.Override_state, buffer, bufferOffset);
    // Serialize message field [EPS_control_state]
    bufferOffset = _serializer.uint8(obj.EPS_control_state, buffer, bufferOffset);
    // Serialize message field [Steering_angle]
    bufferOffset = _serializer.float32(obj.Steering_angle, buffer, bufferOffset);
    // Serialize message field [Control_SW_FB]
    bufferOffset = _serializer.bool(obj.Control_SW_FB, buffer, bufferOffset);
    // Serialize message field [Str_Tq_1]
    bufferOffset = _serializer.uint16(obj.Str_Tq_1, buffer, bufferOffset);
    // Serialize message field [Str_Tq_2]
    bufferOffset = _serializer.uint16(obj.Str_Tq_2, buffer, bufferOffset);
    // Serialize message field [FB_alive_count]
    bufferOffset = _serializer.uint8(obj.FB_alive_count, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FB_EAIT_EPS
    let len;
    let data = new FB_EAIT_EPS(null);
    // Deserialize message field [EPS_En_FB]
    data.EPS_En_FB = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [Override_state]
    data.Override_state = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [EPS_control_state]
    data.EPS_control_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Steering_angle]
    data.Steering_angle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Control_SW_FB]
    data.Control_SW_FB = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [Str_Tq_1]
    data.Str_Tq_1 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [Str_Tq_2]
    data.Str_Tq_2 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [FB_alive_count]
    data.FB_alive_count = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'can_package/FB_EAIT_EPS';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b0fbecc9edcbb9cae7095ad825588218';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    bool EPS_En_FB          # 4|1@1+ (1,0) [0|1]
    bool Override_state     # 7|1@1+ (1,0) [0|1]
    uint8 EPS_control_state # 0|4@1+ (1,0) [0|10]
    float32 Steering_angle  # 8|16@1- (0.1,0) [-540|540] deg
    bool Control_SW_FB      # 5|1@1+ (1,0) [0|1]
    uint16 Str_Tq_1        # 24|13@1+ (0.01,-20.48) [-20.48|61.43]
    uint16 Str_Tq_2        # 40|12@1+ (0.1,-204.8) [-204.8|204.7]
    uint8 FB_alive_count    # 56|8@1+ (1,0) [0|255]
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FB_EAIT_EPS(null);
    if (msg.EPS_En_FB !== undefined) {
      resolved.EPS_En_FB = msg.EPS_En_FB;
    }
    else {
      resolved.EPS_En_FB = false
    }

    if (msg.Override_state !== undefined) {
      resolved.Override_state = msg.Override_state;
    }
    else {
      resolved.Override_state = false
    }

    if (msg.EPS_control_state !== undefined) {
      resolved.EPS_control_state = msg.EPS_control_state;
    }
    else {
      resolved.EPS_control_state = 0
    }

    if (msg.Steering_angle !== undefined) {
      resolved.Steering_angle = msg.Steering_angle;
    }
    else {
      resolved.Steering_angle = 0.0
    }

    if (msg.Control_SW_FB !== undefined) {
      resolved.Control_SW_FB = msg.Control_SW_FB;
    }
    else {
      resolved.Control_SW_FB = false
    }

    if (msg.Str_Tq_1 !== undefined) {
      resolved.Str_Tq_1 = msg.Str_Tq_1;
    }
    else {
      resolved.Str_Tq_1 = 0
    }

    if (msg.Str_Tq_2 !== undefined) {
      resolved.Str_Tq_2 = msg.Str_Tq_2;
    }
    else {
      resolved.Str_Tq_2 = 0
    }

    if (msg.FB_alive_count !== undefined) {
      resolved.FB_alive_count = msg.FB_alive_count;
    }
    else {
      resolved.FB_alive_count = 0
    }

    return resolved;
    }
};

module.exports = FB_EAIT_EPS;
