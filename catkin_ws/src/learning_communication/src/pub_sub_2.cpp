#include <ros/ros.h>
#include <geometry_msgs/Twist.h>
#include "turtlesim/Pose.h"

class TurtleCirclePosition{
public:
    TurtleCirclePosition(){
        pub_ = n_.advertise<geometry_msgs::Twist>("turtle1/cmd_vel",1);
        sub_ = n_.subscribe("/turtle1/pose", 1, &TurtleCirclePosition::callback, this);
    }

    void callback(const turtlesim::Pose& input){
        ROS_INFO("Turtle is at: [%lf,%lf,%lf]", (double)(input.x), (double)(input.y), (double)(input.theta));
        geometry_msgs::Twist msg;
        msg.linear.x = 1;
        msg.linear.y = 0;
        msg.linear.z = 0;
        msg.angular.x = 0;
        msg.angular.y = 0;
        msg.angular.z = 1;

        ROS_INFO("Turtle is turning around with linear velocity(%lf,%lf,%lf) angular velocity(%lf,%lf,%lf)",
                (double)(msg.linear.x), (double)(msg.linear.y), (double)(msg.linear.z), 
                (double)(msg.angular.x), (double)(msg.angular.y), (double)(msg.angular.z));

        pub_.publish(msg);
    }

private:
    ros::NodeHandle n_;
    ros::Publisher pub_;
    ros::Subscriber sub_;
};

int main(int argc, char **argv){

    ros::init(argc, argv, "turtle_circle_position");
    TurtleCirclePosition TCPObject;
    ros::spin();
    return 0;
}
