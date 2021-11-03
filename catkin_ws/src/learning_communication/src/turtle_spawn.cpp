/**
 * using /spawn service，
 * service data type:turtlesim::Spawn
 */

#include <ros/ros.h>
#include <turtlesim/Spawn.h>

int main(int argc, char** argv)
{
    //initialize ros node
	ros::init(argc, argv, "turtle_spawn");
  
    //create node handle
    ros::NodeHandle node;

    //wait for service:/spawn & create a client 
	ros::service::waitForService("/spawn");
	ros::ServiceClient add_turtle = node.serviceClient<turtlesim::Spawn>("/spawn");

    //initialize the request data for turtlesim::Spawn
	turtlesim::Spawn server;
	server.request.x = 3.0;
	server.request.y = 3.0;
	server.request.name = "turtle2";

    //request calling service
	ROS_INFO("Calling service to spwan turtle[x:%0.3f, y:%0.3f, name:%s]", 
			 server.request.x, server.request.y, server.request.name.c_str());

	add_turtle.call(server);

	//display service calling result
	ROS_INFO("Spwan turtle successfully [name:%s]", server.response.name.c_str());

	return 0;
    
};