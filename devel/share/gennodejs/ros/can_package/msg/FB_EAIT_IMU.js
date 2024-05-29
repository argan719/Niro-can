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

class FB_EAIT_IMU {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Lat_Accel = null;
      this.Yaw_Rate = null;
      this.Long_Accel = null;
    }
    else {
      if (initObj.hasOwnProperty('Lat_Accel')) {
        this.Lat_Accel = initObj.Lat_Accel
      }
      else {
        this.Lat_Accel = 0.0;
      }
      if (initObj.hasOwnProperty('Yaw_Rate')) {
        this.Yaw_Rate = initObj.Yaw_Rate
      }
      else {
        this.Yaw_Rate = 0.0;
      }
      if (initObj.hasOwnProperty('Long_Accel')) {
        this.Long_Accel = initObj.Long_Accel
      }
      else {
        this.Long_Accel = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FB_EAIT_IMU
    // Serialize message field [Lat_Accel]
    bufferOffset = _serializer.float32(obj.Lat_Accel, buffer, bufferOffset);
    // Serialize message field [Yaw_Rate]
    bufferOffset = _serializer.float32(obj.Yaw_Rate, buffer, bufferOffset);
    // Serialize message field [Long_Accel]
    bufferOffset = _serializer.float32(obj.Long_Accel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FB_EAIT_IMU
    let len;
    let data = new FB_EAIT_IMU(null);
    // Deserialize message field [Lat_Accel]
    data.Lat_Accel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Yaw_Rate]
    data.Yaw_Rate = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Long_Accel]
    data.Long_Accel = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'can_package/FB_EAIT_IMU';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5a954aa3b789111970bbde7390205462';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new FB_EAIT_IMU(null);
    if (msg.Lat_Accel !== undefined) {
      resolved.Lat_Accel = msg.Lat_Accel;
    }
    else {
      resolved.Lat_Accel = 0.0
    }

    if (msg.Yaw_Rate !== undefined) {
      resolved.Yaw_Rate = msg.Yaw_Rate;
    }
    else {
      resolved.Yaw_Rate = 0.0
    }

    if (msg.Long_Accel !== undefined) {
      resolved.Long_Accel = msg.Long_Accel;
    }
    else {
      resolved.Long_Accel = 0.0
    }

    return resolved;
    }
};

module.exports = FB_EAIT_IMU;
