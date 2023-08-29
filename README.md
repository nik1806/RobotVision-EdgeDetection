# RobotVision-EdgeDetection
Apply edgedetection on a checkerboard and visualize the 2D and 3D data along with a robot model using ROS and rviz.

Let's break down each task:

### Preliminary Requirements
1. **Install ROS Noetic**: Make sure we have ROS Noetic installed on our system.
2. **Create a catkin workspace**: Initialize a new catkin workspace or use an existing one.
3. **Clone Repository**: Clone the challenge repository into the `src/` directory of wer workspace.
4. **Download bagfiles**: Download the necessary ROS bag files from the shared directory.

### 1. Basic
- **C++**: Fill in the `EdgeDetector.hpp` and `EdgeDetector.cpp` files.
- **Python**: Fill in the `edge_detector.py` file.
- **Libraries**: Add any required libraries to `CMakeLists.txt`.
- **Documentation**: Provide a README.md file with installation instructions, implementation steps, concepts used, and possible improvements.

### 2. Vision_ROS
- **ROS Service**: Create ROS `.srv` and `.msg` files for edge detection.
- **Example Usage**: Provide an example client that uses this service to detect edges for image files in a directory.
- **RViz Visualization**: Visualize the input image and detected edges on RViz.
- **3D Data**: Convert edge pixels to 3D data using depth images and camera parameters. Publish this data to a ROS topic (suggested: `sensor_msgs/PointCloud`) with the topic name `edge_points`.

### 3. Robot_ROS
- **RViz Markers**: Visualize the 3D edge points as RViz markers along with a robot visualization.
- **Video Submission**: Provide a video of the markers and the robot on RViz for one loop of the given .bag file.

### 4. Advanced
- Complete all the above tasks.

#### Tips provided
- For edge detection, we can use OpenCV's Canny or Sobel operators.
- For ROS services, we can define custom message types in `.srv` and `.msg` files.
- For 3D data conversion, we can use the camera parameters to map 2D pixel coordinates to 3D world coordinates.
- For RViz markers, we can use `visualization_msgs/Marker` to display points, lines, or other shapes.


### Installation Instructions

#### Git LFS 
Due to presence of large files, I am using LFS because I want to keep all files in one place.
```
sudo apt install git-lfs
git lfs install
```