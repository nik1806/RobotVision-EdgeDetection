// Generated by gencpp from file edge_detection_service/EdgeDetectionResponse.msg
// DO NOT EDIT!


#ifndef EDGE_DETECTION_SERVICE_MESSAGE_EDGEDETECTIONRESPONSE_H
#define EDGE_DETECTION_SERVICE_MESSAGE_EDGEDETECTIONRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace edge_detection_service
{
template <class ContainerAllocator>
struct EdgeDetectionResponse_
{
  typedef EdgeDetectionResponse_<ContainerAllocator> Type;

  EdgeDetectionResponse_()
    {
    }
  EdgeDetectionResponse_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::edge_detection_service::EdgeDetectionResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::edge_detection_service::EdgeDetectionResponse_<ContainerAllocator> const> ConstPtr;

}; // struct EdgeDetectionResponse_

typedef ::edge_detection_service::EdgeDetectionResponse_<std::allocator<void> > EdgeDetectionResponse;

typedef boost::shared_ptr< ::edge_detection_service::EdgeDetectionResponse > EdgeDetectionResponsePtr;
typedef boost::shared_ptr< ::edge_detection_service::EdgeDetectionResponse const> EdgeDetectionResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::edge_detection_service::EdgeDetectionResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::edge_detection_service::EdgeDetectionResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace edge_detection_service

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::edge_detection_service::EdgeDetectionResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::edge_detection_service::EdgeDetectionResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::edge_detection_service::EdgeDetectionResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::edge_detection_service::EdgeDetectionResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::edge_detection_service::EdgeDetectionResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::edge_detection_service::EdgeDetectionResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::edge_detection_service::EdgeDetectionResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::edge_detection_service::EdgeDetectionResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::edge_detection_service::EdgeDetectionResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "edge_detection_service/EdgeDetectionResponse";
  }

  static const char* value(const ::edge_detection_service::EdgeDetectionResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::edge_detection_service::EdgeDetectionResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
;
  }

  static const char* value(const ::edge_detection_service::EdgeDetectionResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::edge_detection_service::EdgeDetectionResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct EdgeDetectionResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::edge_detection_service::EdgeDetectionResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::edge_detection_service::EdgeDetectionResponse_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // EDGE_DETECTION_SERVICE_MESSAGE_EDGEDETECTIONRESPONSE_H
