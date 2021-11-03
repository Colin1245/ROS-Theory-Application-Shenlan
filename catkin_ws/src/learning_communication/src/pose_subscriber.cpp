/**
topic:geometry_msgs/Pose
message type: Point position & Quaternion orientation
 */
#include <ros/ros.h>
#include "turtlesim/Pose.h"

//registered subscriber callback func
void poseCallback(const turtlesim::Pose::ConstPtr &msg){
    //print message(x,y coordinates are displayed)
    ROS_INFO("The turlte's pose: x:%0.3f, y:%0.3f", msg->x, msg->y);
}

int main(int argc, char **argv){
    //initialize ros node
    ros::init(argc, argv, "pose_subscriber");

    //create node handle
    ros::NodeHandle node;

    //create a subscriber
    ros::Subscriber turtle_pose_sub = node.subscribe("/turtle1/pose", 10, poseCallback);

    //loop for callback func
    ros::spin();

    return 0;
}