// Generated by gencpp from file dds_application/Calculator.msg
// DO NOT EDIT!


#ifndef DDS_APPLICATION_MESSAGE_CALCULATOR_H
#define DDS_APPLICATION_MESSAGE_CALCULATOR_H

#include <ros/service_traits.h>


#include <dds_application/CalculatorRequest.h>
#include <dds_application/CalculatorResponse.h>


namespace dds_application
{

struct Calculator
{

typedef CalculatorRequest Request;
typedef CalculatorResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Calculator
} // namespace dds_application


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::dds_application::Calculator > {
  static const char* value()
  {
    return "df0f91cc6ce6776a62af7328625fb3c8";
  }

  static const char* value(const ::dds_application::Calculator&) { return value(); }
};

template<>
struct DataType< ::dds_application::Calculator > {
  static const char* value()
  {
    return "dds_application/Calculator";
  }

  static const char* value(const ::dds_application::Calculator&) { return value(); }
};


// service_traits::MD5Sum< ::dds_application::CalculatorRequest> should match 
// service_traits::MD5Sum< ::dds_application::Calculator > 
template<>
struct MD5Sum< ::dds_application::CalculatorRequest>
{
  static const char* value()
  {
    return MD5Sum< ::dds_application::Calculator >::value();
  }
  static const char* value(const ::dds_application::CalculatorRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::dds_application::CalculatorRequest> should match 
// service_traits::DataType< ::dds_application::Calculator > 
template<>
struct DataType< ::dds_application::CalculatorRequest>
{
  static const char* value()
  {
    return DataType< ::dds_application::Calculator >::value();
  }
  static const char* value(const ::dds_application::CalculatorRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::dds_application::CalculatorResponse> should match 
// service_traits::MD5Sum< ::dds_application::Calculator > 
template<>
struct MD5Sum< ::dds_application::CalculatorResponse>
{
  static const char* value()
  {
    return MD5Sum< ::dds_application::Calculator >::value();
  }
  static const char* value(const ::dds_application::CalculatorResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::dds_application::CalculatorResponse> should match 
// service_traits::DataType< ::dds_application::Calculator > 
template<>
struct DataType< ::dds_application::CalculatorResponse>
{
  static const char* value()
  {
    return DataType< ::dds_application::Calculator >::value();
  }
  static const char* value(const ::dds_application::CalculatorResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // DDS_APPLICATION_MESSAGE_CALCULATOR_H