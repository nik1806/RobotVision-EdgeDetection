#pragma once
#include <opencv2/opencv.hpp>

namespace edge_detection
{
class EdgeDetector
{
	// Your class declaration goes here 
public:
    EdgeDetector();
    ~EdgeDetector();
    cv::Mat detectEdges(const cv::Mat& inputImage);
};

}
