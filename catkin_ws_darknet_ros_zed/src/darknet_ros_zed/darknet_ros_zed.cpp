#include <iostream>
#include <vector>
#include <sstream>
#include <string>
#include <boost/bind.hpp>

#include <ros/ros.h>
#include <ros/spinner.h>
#include <sensor_msgs/Image.h>
#include <sensor_msgs/CameraInfo.h>
#include <message_filters/subscriber.h>
#include <message_filters/synchronizer.h>
#include <message_filters/sync_policies/approximate_time.h>

#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/image_encodings.h>

#include <darknet_ros_msgs/BoundingBoxes.h>

const std::string zedDepth_topic = "/zed/zed_node/depth/depth_registered";
const std::string darknetRos_topic = "/darknet_ros/bounding_boxes";

struct coordinate_3d
{
    coordinate_3d() { w = h = d = 0;}
    double w;
    double h;
    double d;
};

void depthCallBack(const sensor_msgs::Image::ConstPtr& depthImage, std::vector<coordinate_3d>* point)
{
    if(*point->size() == 0) ROS_INFO("there is no object detected");
    else {
        for(auto begin = *point->begin();begin != *point->end();begin++)
        {
            double depths = (double *)(&depthImage->data[0]);
            double pointID = *begin.w + *begin.h * *depthImage->width;
            double depth = depths[pointID];
            begin.d = depth;
        }
    }
}

void bboxCallBack(const darknet_ros_msgs::BoundingBoxes::ConstPtr& bbox, std::vector<coordinate_3d>* point)
{
    if(*point->size() > 0) *point->clear();
    if(bbox->bounding_boxes.size() == 0)
        ROS_INFO("there is no object detected");
    else {
        double xmax, xmin, ymax, ymin;
        for(begin = bbox->bounding_boxes.begin(); begin != bbox->bounding_boxes.end();begin++)
        {

        }
    }
}

int main(int argc, char **argv)
{
    std::vector<coordinate_3d> pointVec;
    ros::init(argc, argv, "darknet_ros_zed");
    if(!ros::ok())  return 0;
    ros::NodeHandle nh;
    ros::Subscriber darknetROS = nh.subscribe<darknet_ros_msgs::BoundingBoxes>(darknetRos_topic, 10, boost::bind(&bboxCallBack, _1, &pointVec));
    ros::Subscriber zedDepth = nh.subscribe<sensor_msgs::Image>(zedDepth_topic, 10, boost::bind(&depthCallBack, _1, &pointVec));
    ros::AsyncSpinner spinner(3);

    ROS_INFO("Hello world!");
}
