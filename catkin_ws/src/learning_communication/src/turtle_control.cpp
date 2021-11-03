/**
 * using /spawn service，
 * service data type:turtlesim::Spawn
 */

#include <string>
#include <iostream>
#include <ros/ros.h>
#include <turtlesim/Spawn.h>
#include <geometry_msgs/Twist.h>

int main(int argc, char** argv)
{
    //initialize ros node
	ros::init(argc, argv, "turtle_control");
  
    //create node handle
    ros::NodeHandle node;

    //wait for service:/spawn & create a client 
	ros::service::waitForService("/spawn");
	ros::ServiceClient add_turtle = node.serviceClient<turtlesim::Spawn>("/spawn");

    //initialize the request data for turtlesim::Spawn
	turtlesim::Spawn server;
	server.request.x = 3.0;
	server.request.y = 3.0;

	//give your new turtle name
	std::cout << "Please input your new turtle name: " << std::endl;
	std::string newname = " ";
	std::cin >> newname;
	server.request.name = newname;

    //request calling service
	ROS_INFO("Calling service to spwan turtle[x:%0.3f, y:%0.3f, name:%s]", 
			 server.request.x, server.request.y, server.request.name.c_str());

	add_turtle.call(server);

	//display service calling result
	ROS_INFO("New turtle successfully created [name:%s]", server.response.name.c_str());

	//create a Publisher 
	std::cout << "which turtle do you want to control?" << std::endl;
	std::cout << "turtle1 or "; 
	std::cout << newname;

	std::string sel;
	std::cin >> sel;

	if (sel == "turtle1")
	{ 
		ros::Publisher turtle_v_pub = node.advertise<geometry_msgs::Twist>("turtle1/cmd_vel",10);

		//set loop frequency
		ros::Rate loop_rate(10);

		int count = 0;
		std::cout << "please input your angular speed z: ";
		int z = 0.0;
		std::cin >> z;

		while (ros::ok())
		{
			//initialize message 
			geometry_msgs::Twist v_msg;

			v_msg.linear.x = 2;
			v_msg.angular.z = z;

			//publish message
			turtle_v_pub.publish(v_msg);
			ROS_INFO("Successfully published velocity message:[%0.2f m/s, %0.2f rad/s]",
			v_msg.linear.x, v_msg.angular.z);

			loop_rate.sleep();
			++count;
		
		}
	}
	else{
		ros::Publisher turtle_v_pub = node.advertise<geometry_msgs::Twist>( newname + "/cmd_vel",10);

		//set loop frequency
		ros::Rate loop_rate(10);

		int count = 0;
		std::cout << "please input your angular speed z: ";
		int z = 0.0;
		std::cin >> z;

		while (ros::ok())
		{
			//initialize message 
			geometry_msgs::Twist v_msg;

			v_msg.linear.x = 2;
			v_msg.angular.z = z;

			//publish message
			turtle_v_pub.publish(v_msg);
			ROS_INFO("Successfully published velocity message:[%0.2f m/s, %0.2f rad/s]",
			v_msg.linear.x, v_msg.angular.z);

			loop_rate.sleep();
			++count;
		
		}
	}

 
	
	return 0;
};
