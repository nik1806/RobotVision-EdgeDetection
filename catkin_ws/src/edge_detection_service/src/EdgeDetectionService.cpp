#include "ros/ros.h"
#include "edge_detection_service/EdgeDetection.h"  
#include "edge_detection/EdgeDetector.hpp"  

bool edgeDetectionCallback(edge_detection_service::EdgeDetection::Request &req,
                           edge_detection_service::EdgeDetection::Response &res)
{
    edge_detection::EdgeDetector edgeDetector;
    res.edge_image = edgeDetector.detectEdges(req.input_image);
    return true;
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "edge_detection_service");
    ros::NodeHandle nh;

    ros::ServiceServer service = nh.advertiseService("edge_detection_service", edgeDetectionCallback);

    ROS_INFO("Ready to detect edges.");
    ros::spin();

    return 0;
}
