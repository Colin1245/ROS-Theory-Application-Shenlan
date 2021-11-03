/**
topic:turtle1/cmd_vel
message type: geometry_msgs::Twist
 */

#include <ros/ros.h>
#include <geometry_msgs/Twist.h>

int main(int argc, char **argv){
    //initialize ros node
    ros::init(argc, argv, "v_publisher");

    //create node handle
    ros::NodeHandle node;

    //create a Publisher 
    ros::Publisher turtle_v_pub = node.advertise<geometry_msgs::Twist>("turtle1/cmd_vel",10);

    //set loop frequency
    ros::Rate loop_rate(10);

    int count = 0;
    while (ros::ok())
    {
        //initialize message 
        geometry_msgs::Twist v_msg;
        v_msg.linear.x = 0.5;
        v_msg.angular.z = 0.2;

        //publish message
        turtle_v_pub.publish(v_msg);
        ROS_INFO("Successfully published velocity message:[%0.2f m/s, %0.2f rad/s]",
        v_msg.linear.x, v_msg.angular.z);

        loop_rate.sleep();
        ++count;

    }

    return 0;
}