#include <edge_detection/EdgeDetector.hpp>
#include <iostream> // to read images

using namespace edge_detection;

// Your class methods definition goes here

//class constructor
EdgeDetector::EdgeDetector() {}

EdgeDetector::~EdgeDetector() {}

cv::Mat EdgeDetector::detectEdges(const cv::Mat& inputImage) {
    cv::Mat grayImage, blurredImage, edges;

    // Convert to grayscale
    cv::cvtColor(inputImage, grayImage, cv::COLOR_BGR2GRAY);

    // Apply Gaussian blur
    cv::GaussianBlur(grayImage, blurredImage, cv::Size(5, 5), 1.5, 1.5);

    // Apply Canny edge detector
    cv::Canny(blurredImage, edges, 100, 200);

     // Create a copy of the original image to superimpose edges on
    cv::Mat outputImage = inputImage.clone();

    // Superimpose edges (in green) on the original image
    for (int i = 0; i < edges.rows; ++i) {
        for (int j = 0; j < edges.cols; ++j) {
            if (edges.at<uchar>(i, j) == 255) {
                outputImage.at<cv::Vec3b>(i, j) = cv::Vec3b(0, 255, 0);
            }
        }
    }

    return outputImage;
}


int main()
{
	edge_detection::EdgeDetector detector;
    // Create the executable for testing the code here

	// Read an image
    cv::Mat inputImage = cv::imread("/home/paliwal/Desktop/RobotVision-EdgeDetection/catkin_ws/src/edge_detection/data/Image_4.png");
	// std::string packagePath = ros::package::getPath("edge_detection");
	// std::string imagePath = packagePath + "/data/Image_1.png";
	// cv::Mat inputImage = cv::imread(imagePath);
    // failsafe
	if (inputImage.empty()) {
        std::cout << "Could not read the image" << std::endl;
        return 1;
    }

    // Apply edge detection
    cv::Mat outputImage = detector.detectEdges(inputImage);

    // Display the result
    cv::imshow("Original Image", inputImage);
    cv::imshow("Edge Detection", outputImage);
    cv::waitKey(0);

    return 0;
}
