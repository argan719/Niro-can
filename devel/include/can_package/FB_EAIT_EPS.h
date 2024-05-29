// Generated by gencpp from file can_package/FB_EAIT_EPS.msg
// DO NOT EDIT!


#ifndef CAN_PACKAGE_MESSAGE_FB_EAIT_EPS_H
#define CAN_PACKAGE_MESSAGE_FB_EAIT_EPS_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace can_package
{
template <class ContainerAllocator>
struct FB_EAIT_EPS_
{
  typedef FB_EAIT_EPS_<ContainerAllocator> Type;

  FB_EAIT_EPS_()
    : EPS_En_FB(false)
    , Override_state(false)
    , EPS_control_state(0)
    , Steering_angle(0.0)
    , Control_SW_FB(false)
    , Str_Tq_1(0)
    , Str_Tq_2(0)
    , FB_alive_count(0)  {
    }
  FB_EAIT_EPS_(const ContainerAllocator& _alloc)
    : EPS_En_FB(false)
    , Override_state(false)
    , EPS_control_state(0)
    , Steering_angle(0.0)
    , Control_SW_FB(false)
    , Str_Tq_1(0)
    , Str_Tq_2(0)
    , FB_alive_count(0)  {
  (void)_alloc;
    }



   typedef uint8_t _EPS_En_FB_type;
  _EPS_En_FB_type EPS_En_FB;

   typedef uint8_t _Override_state_type;
  _Override_state_type Override_state;

   typedef uint8_t _EPS_control_state_type;
  _EPS_control_state_type EPS_control_state;

   typedef float _Steering_angle_type;
  _Steering_angle_type Steering_angle;

   typedef uint8_t _Control_SW_FB_type;
  _Control_SW_FB_type Control_SW_FB;

   typedef uint16_t _Str_Tq_1_type;
  _Str_Tq_1_type Str_Tq_1;

   typedef uint16_t _Str_Tq_2_type;
  _Str_Tq_2_type Str_Tq_2;

   typedef uint8_t _FB_alive_count_type;
  _FB_alive_count_type FB_alive_count;





  typedef boost::shared_ptr< ::can_package::FB_EAIT_EPS_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::can_package::FB_EAIT_EPS_<ContainerAllocator> const> ConstPtr;

}; // struct FB_EAIT_EPS_

typedef ::can_package::FB_EAIT_EPS_<std::allocator<void> > FB_EAIT_EPS;

typedef boost::shared_ptr< ::can_package::FB_EAIT_EPS > FB_EAIT_EPSPtr;
typedef boost::shared_ptr< ::can_package::FB_EAIT_EPS const> FB_EAIT_EPSConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::can_package::FB_EAIT_EPS_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::can_package::FB_EAIT_EPS_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::can_package::FB_EAIT_EPS_<ContainerAllocator1> & lhs, const ::can_package::FB_EAIT_EPS_<ContainerAllocator2> & rhs)
{
  return lhs.EPS_En_FB == rhs.EPS_En_FB &&
    lhs.Override_state == rhs.Override_state &&
    lhs.EPS_control_state == rhs.EPS_control_state &&
    lhs.Steering_angle == rhs.Steering_angle &&
    lhs.Control_SW_FB == rhs.Control_SW_FB &&
    lhs.Str_Tq_1 == rhs.Str_Tq_1 &&
    lhs.Str_Tq_2 == rhs.Str_Tq_2 &&
    lhs.FB_alive_count == rhs.FB_alive_count;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::can_package::FB_EAIT_EPS_<ContainerAllocator1> & lhs, const ::can_package::FB_EAIT_EPS_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace can_package

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::can_package::FB_EAIT_EPS_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::can_package::FB_EAIT_EPS_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::can_package::FB_EAIT_EPS_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::can_package::FB_EAIT_EPS_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::can_package::FB_EAIT_EPS_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::can_package::FB_EAIT_EPS_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::can_package::FB_EAIT_EPS_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b0fbecc9edcbb9cae7095ad825588218";
  }

  static const char* value(const ::can_package::FB_EAIT_EPS_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb0fbecc9edcbb9caULL;
  static const uint64_t static_value2 = 0xe7095ad825588218ULL;
};

template<class ContainerAllocator>
struct DataType< ::can_package::FB_EAIT_EPS_<ContainerAllocator> >
{
  static const char* value()
  {
    return "can_package/FB_EAIT_EPS";
  }

  static const char* value(const ::can_package::FB_EAIT_EPS_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::can_package::FB_EAIT_EPS_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
"bool EPS_En_FB          # 4|1@1+ (1,0) [0|1]\n"
"bool Override_state     # 7|1@1+ (1,0) [0|1]\n"
"uint8 EPS_control_state # 0|4@1+ (1,0) [0|10]\n"
"float32 Steering_angle  # 8|16@1- (0.1,0) [-540|540] deg\n"
"bool Control_SW_FB      # 5|1@1+ (1,0) [0|1]\n"
"uint16 Str_Tq_1        # 24|13@1+ (0.01,-20.48) [-20.48|61.43]\n"
"uint16 Str_Tq_2        # 40|12@1+ (0.1,-204.8) [-204.8|204.7]\n"
"uint8 FB_alive_count    # 56|8@1+ (1,0) [0|255]\n"
;
  }

  static const char* value(const ::can_package::FB_EAIT_EPS_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::can_package::FB_EAIT_EPS_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.EPS_En_FB);
      stream.next(m.Override_state);
      stream.next(m.EPS_control_state);
      stream.next(m.Steering_angle);
      stream.next(m.Control_SW_FB);
      stream.next(m.Str_Tq_1);
      stream.next(m.Str_Tq_2);
      stream.next(m.FB_alive_count);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct FB_EAIT_EPS_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::can_package::FB_EAIT_EPS_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::can_package::FB_EAIT_EPS_<ContainerAllocator>& v)
  {
    s << indent << "EPS_En_FB: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.EPS_En_FB);
    s << indent << "Override_state: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.Override_state);
    s << indent << "EPS_control_state: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.EPS_control_state);
    s << indent << "Steering_angle: ";
    Printer<float>::stream(s, indent + "  ", v.Steering_angle);
    s << indent << "Control_SW_FB: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.Control_SW_FB);
    s << indent << "Str_Tq_1: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.Str_Tq_1);
    s << indent << "Str_Tq_2: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.Str_Tq_2);
    s << indent << "FB_alive_count: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.FB_alive_count);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CAN_PACKAGE_MESSAGE_FB_EAIT_EPS_H
