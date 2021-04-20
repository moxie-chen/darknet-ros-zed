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
#include <message_filters/time_synchronizer.h>
#include <message_filters/sync_policies/approximate_time.h>

#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/image_encodings.h>

#include <darknet_ros_msgs/BoundingBoxes.h>
#include <zed_darknet_ros_msgs/zed_darknet_ros_msgs.h>
#include <darknet_ros_zed/coordinate_msgs.h>

const std::string zedDepth_topic = "/zed/zed_node/depth/depth_registered";
const std::string darknetRos_topic = "/darknet_ros/bounding_boxes";

ros::Publisher point_pub;

struct coordinate_3d
{
    coordinate_3d() { w = h = d = 0;}
    float w;
    float h;
    float d;
    std::string className;
    float probability;
};

void callBck(const darknet_ros_msgs::BoundingBoxes::ConstPtr& bbox, const sensor_msgs::Image::ConstPtr& depth, std::vector<coordinate_3d>* points)
{
    int u = 0;
    int v = 0;
    int centerIdx = 0;
    std::string name;

    int sizes = depth->data.size();

    float* depths = (float*)(&depth->data[0]);

    int num = bbox->bounding_boxes.size();

    if(num == 0)
    {
        ROS_INFO("No Object Detected !");
    }

    for (int i = 0; i < num; i++)
    {
        darknet_ros_zed::coordinate_msgs msgs;
        coordinate_3d point;
        u = ((bbox->bounding_boxes[i].xmax - bbox->bounding_boxes[i].xmin)/2) + bbox->bounding_boxes[i].xmin;
        v = ((bbox->bounding_boxes[i].ymax - bbox->bounding_boxes[i].ymin)/2) + bbox->bounding_boxes[i].ymin;
        centerIdx = u + depth->width * v;
        if (centerIdx < 0)
        {
            centerIdx = 0;
        }
        else if (centerIdx > sizes /4)
        {
            centerIdx = sizes /4;
        }
        point.d = depths[centerIdx];
        point.w = u;
        point.h = v;
        point.className = bbox->bounding_boxes[i].Class;
        point.probability = bbox->bounding_boxes[i].probability;
        //如果不需要对points传回主函数处理就不需要下面这一行
        //points->push_back(point);
        msgs.depth = depths[centerIdx];
        msgs.x = (msgs.depth * (u - 632.2350)) / 2014.6162;
        msgs.y = (msgs.depth * (v - 323.1177)) / 2025.0555;
        msgs.className = bbox->bounding_boxes[i].Class;
        msgs.probability = bbox->bounding_boxes[i].probability;
        point_pub.publish(msgs);
        std::string outPut;
        outPut =  "Detecet Obeject Name : " + msgs.className
                + " Probility : " + std::to_string(msgs.probability)
                + "  Obeject Coordinate : x " + std::to_string(msgs.x) + " y: " + std::to_string(msgs.y)
                + " depth: " + std::to_string(msgs.depth);
        ROS_INFO(outPut.c_str());
    }
}

int main(int argc, char **argv)
{
    std::vector<coordinate_3d> pointVec;
    ros::init(argc, argv, "darknet_ros_zed");
    if(!ros::ok())  return 0;
    ros::NodeHandle nh;
    std::vector<coordinate_3d> points;

    message_filters::Subscriber<darknet_ros_msgs::BoundingBoxes> object_detecet(nh, darknetRos_topic, 1);
    message_filters::Subscriber<sensor_msgs::Image> zed_depth(nh, zedDepth_topic, 1);
    point_pub = nh.advertise<darknet_ros_zed::coordinate_msgs>("/darknet_ros_zed/coordingnate", 1);
    typedef message_filters::sync_policies::ApproximateTime<darknet_ros_msgs::BoundingBoxes, sensor_msgs::Image> synPolicy;
    message_filters::Synchronizer<synPolicy> sync(synPolicy(10), object_detecet, zed_depth);
    sync.registerCallback(boost::bind(&callBck, _1, _2, &points));

    ros::AsyncSpinner spinner(3);

    ros::spin();
    return 0;
}
