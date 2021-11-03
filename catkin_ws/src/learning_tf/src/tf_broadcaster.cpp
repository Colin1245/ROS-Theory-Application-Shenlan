#include <ros/ros.h>
#include <tf/transform_broadcaster.h>


int main(int argc, char** argv)
{
    // initialize ros node
	ros::init(argc, argv, "my_tf_broadcaster");

	ros::NodeHandle node;

    static tf::TransformBroadcaster broadcaster;

    while (node.ok())
    {
        tf::Transform transform;
        transform.setOrigin(tf::Vector3(0.1, 0.0, 0.2));
        transform.setRotation(tf::Quaternion(0, 0, 0, 1)); 
        broadcaster.sendTransform(tf::StampedTransform(transform, ros::Time::now(), "base_link", "base_laser"));

    }
    return 0;
}