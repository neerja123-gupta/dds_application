#include <ros/ros.h>
#include <dds_application/Calculator.h>
#include <cstdlib>
#include <std_msgs/String.h>
#include <iostream>

int main(int argc, char **argv)
{
  ros::init(argc, argv, "program_A");

  if (argc != 4)
  {
    ROS_INFO("usage: Take user input and output the results");
    return 1;
  }

  ros::NodeHandle n;

  ros::ServiceClient client = n.serviceClient<dds_application::Calculator>("basic_math_operations");

  dds_application::Calculator srv;

  srv.request.a = atoll(argv[1]);
  srv.request.b = atoll(argv[2]);
  srv.request.operation = argv[3];

  if (client.call(srv))
  {
     ROS_INFO("Result is: %ld", (long int)srv.response.result);
  }
  else
  {
    ROS_ERROR("Failed to call service basic_math_operations");
    return 1;
  }

  return 0;
}
