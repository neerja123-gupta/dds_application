# dds_application

Using DDS middleware libraries (any DDS implementation), write two programs (program A and B) and have them communicate with each other. Program A and B together act as a calculator (Basic Math Operation)

Here in this project, ROS (https://www.ros.org/) has been used as a middleware library in order to communicate between 
the two programs Program A and Program B.

# Program A

Here, Program A is "dds_application_client.cpp" which in src folder .  Here ROS Client Server based method have been used so that it can execute just once unlike publisher and subscriber which runs constanty.
It has following features based on the project requirement. 

It takes user inputs (Command ine interface)
sends the user input over DDS topic to Program B.
Outputs the result response from Program B.

# Program B
Program B is dds_application_server.cpp inside src folder, which acts as a server. On recieving user input from Program A it calculates the results and sends the results back to Program A. 

# Steps to run the program

Run ROS master

```bash
roscore
```

Execute Program A which is acting as a server
```bash
rosrun dds_application dds_application_server
```

Execute Program B which is acting as a client
```bash
rosrun dds_application dds_application_client 3 2 ^ 
```

Similarly any other basic math operator (+, -, *, /, %) can be used.

