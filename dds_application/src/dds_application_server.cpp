#include <ros/ros.h>
#include <dds_application/Calculator.h>
#include <iostream>

class SimpleCalculator
{
public:
  bool Calculator(dds_application::Calculator::Request &req,
           dds_application::Calculator::Response &res);
};


bool SimpleCalculator::Calculator(dds_application::Calculator::Request &req,
                           dds_application::Calculator::Response &res)
{

     if(req.operation == "+")
     {
         res.result = req.a + req.b;
     }

     else if(req.operation == "-")
     {
         res.result = req.a - req.b;
     }
     else if(req.operation == "*")
     {
         res.result = req.a * req.b;
     }
     else if(req.operation == "/")
     {
         res.result = req.a / req.b;
     }
     else if(req.operation == "%")
     {
         res.result = req.a % req.b;
     }
     else if(req.operation == "^")
     {
          res.result = pow(req.a, req.b);
     }
     else
         std::cout << " No Operation Found" << std::endl;

      return true;
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "program_B");
  ros::NodeHandle n;

  SimpleCalculator calci;
  ros::ServiceServer server = n.advertiseService("basic_math_operations", &SimpleCalculator::Calculator, &calci);

  while(ros::ok())
  {
  ros::spin();
  }

  return 0;
}
