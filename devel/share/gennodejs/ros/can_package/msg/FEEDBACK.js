// Auto-generated. Do not edit!

// (in-package can_package.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let FB_EAIT_EPS = require('./FB_EAIT_EPS.js');
let FB_EAIT_SCC = require('./FB_EAIT_SCC.js');
let FB_EAIT_SPD = require('./FB_EAIT_SPD.js');
let FB_EAIT_IMU = require('./FB_EAIT_IMU.js');

//-----------------------------------------------------------

class FEEDBACK {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.container_710 = null;
      this.container_711 = null;
      this.container_712 = null;
      this.container_713 = null;
    }
    else {
      if (initObj.hasOwnProperty('container_710')) {
        this.container_710 = initObj.container_710
      }
      else {
        this.container_710 = new FB_EAIT_EPS();
      }
      if (initObj.hasOwnProperty('container_711')) {
        this.container_711 = initObj.container_711
      }
      else {
        this.container_711 = new FB_EAIT_SCC();
      }
      if (initObj.hasOwnProperty('container_712')) {
        this.container_712 = initObj.container_712
      }
      else {
        this.container_712 = new FB_EAIT_SPD();
      }
      if (initObj.hasOwnProperty('container_713')) {
        this.container_713 = initObj.container_713
      }
      else {
        this.container_713 = new FB_EAIT_IMU();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FEEDBACK
    // Serialize message field [container_710]
    bufferOffset = FB_EAIT_EPS.serialize(obj.container_710, buffer, bufferOffset);
    // Serialize message field [container_711]
    bufferOffset = FB_EAIT_SCC.serialize(obj.container_711, buffer, bufferOffset);
    // Serialize message field [container_712]
    bufferOffset = FB_EAIT_SPD.serialize(obj.container_712, buffer, bufferOffset);
    // Serialize message field [container_713]
    bufferOffset = FB_EAIT_IMU.serialize(obj.container_713, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FEEDBACK
    let len;
    let data = new FEEDBACK(null);
    // Deserialize message field [container_710]
    data.container_710 = FB_EAIT_EPS.deserialize(buffer, bufferOffset);
    // Deserialize message field [container_711]
    data.container_711 = FB_EAIT_SCC.deserialize(buffer, bufferOffset);
    // Deserialize message field [container_712]
    data.container_712 = FB_EAIT_SPD.deserialize(buffer, bufferOffset);
    // Deserialize message field [container_713]
    data.container_713 = FB_EAIT_IMU.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 44;
  }

  static datatype() {
    // Returns string type for a message object
    return 'can_package/FEEDBACK';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f344d1fad6e38400d9bbe521baaeced1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    can_package/FB_EAIT_EPS container_710
    can_package/FB_EAIT_SCC container_711
    can_package/FB_EAIT_SPD container_712
    can_package/FB_EAIT_IMU container_713
    
    ================================================================================
    MSG: can_package/FB_EAIT_EPS
    
    bool EPS_En_FB          # 4|1@1+ (1,0) [0|1]
    bool Override_state     # 7|1@1+ (1,0) [0|1]
    uint8 EPS_control_state # 0|4@1+ (1,0) [0|10]
    float32 Steering_angle  # 8|16@1- (0.1,0) [-540|540] deg
    bool Control_SW_FB      # 5|1@1+ (1,0) [0|1]
    uint16 Str_Tq_1        # 24|13@1+ (0.01,-20.48) [-20.48|61.43]
    uint16 Str_Tq_2        # 40|12@1+ (0.1,-204.8) [-204.8|204.7]
    uint8 FB_alive_count    # 56|8@1+ (1,0) [0|255]
    
    ================================================================================
    MSG: can_package/FB_EAIT_SCC
    
    uint8 ACC_control_state  # 0|4@1+ (1,0) [0|10]
    bool EPS_En_FB           # 4|1@1+ (1,0) [0|1]
    bool Override_ACC_state  # 6|1@1+ (1,0) [0|1]
    bool Override_BRK_state  # 7|1@1+ (1,0) [0|1]
    uint8 Vehicle_speed      # 8|8@1+ (1,0) [0|255] kph
    bool AEB_state           # 5|1@1+ (1,0) [0|1]
    float32 Long_Accel       # 16|16@1+ (0.000127465,-4.17677312) [-4.17677312|4.176645655] m/s^2
    uint8 Gear_Disp          # 32|4@1+ (1,0) [0|15]
    
    ================================================================================
    MSG: can_package/FB_EAIT_SPD
    
    uint16 WHL_SPD_FL    # 0|14@1+ (0.03125,0) [0|511.96875]
    uint16 WHL_SPD_FR    # 16|14@1+ (0.03125,0) [0|511.96875]
    uint16 WHL_SPD_RL    # 32|14@1+ (0.03125,0) [0|511.96875]
    uint16 WHL_SPD_RR    # 48|14@1+ (0.03125,0) [0|511.96875]
    
    ================================================================================
    MSG: can_package/FB_EAIT_IMU
    float32 Lat_Accel    # 16|16@1+ (0.000127564,-4.17677312) [-4.17677312|4.18313362] m/s^2
    float32 Yaw_Rate     # 32|16@1+ (0.005,-163.84) [-163.84|163.835] deg/s
    float32 Long_Accel   # 0|16@1+ (0.001249157,-40.9323) [-40.9323|4.176645655] m/s^2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FEEDBACK(null);
    if (msg.container_710 !== undefined) {
      resolved.container_710 = FB_EAIT_EPS.Resolve(msg.container_710)
    }
    else {
      resolved.container_710 = new FB_EAIT_EPS()
    }

    if (msg.container_711 !== undefined) {
      resolved.container_711 = FB_EAIT_SCC.Resolve(msg.container_711)
    }
    else {
      resolved.container_711 = new FB_EAIT_SCC()
    }

    if (msg.container_712 !== undefined) {
      resolved.container_712 = FB_EAIT_SPD.Resolve(msg.container_712)
    }
    else {
      resolved.container_712 = new FB_EAIT_SPD()
    }

    if (msg.container_713 !== undefined) {
      resolved.container_713 = FB_EAIT_IMU.Resolve(msg.container_713)
    }
    else {
      resolved.container_713 = new FB_EAIT_IMU()
    }

    return resolved;
    }
};

module.exports = FEEDBACK;
