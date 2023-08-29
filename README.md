# RobotVision-EdgeDetection
Apply edgedetection on a checkerboard and visualize the 2D and 3D data along with a robot model using ROS and rviz.

Let's break down each task:

### Preliminary Requirements
1. **Install ROS Noetic**: Make sure we have ROS Noetic installed on our system.
2. **Create a catkin workspace**: Initialize a new catkin workspace or use an existing one.
3. **Clone Repository**: Clone the challenge repository into the `src/` directory of our workspace.
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


## Installation Instructions

#### Git LFS 
Due to presence of large files, I am using LFS because I want to keep all files in one place.
```
sudo apt install git-lfs
git lfs install
```


#### OpenCV
Install in C++ with the following command
```
sudo apt update
sudo apt install libopencv-dev
```

Check installation
```
pkg-config --modversion opencv4
```

## Execution Instructions

To launch the robot description and bag file:
    ```
    # Terminal 1
    roscore

    # Terminal 2
    rosparam set /use_sim_time true
    source catkin_ws/devel/setup.bash
    roslaunch mira_picker display.launch gripper_name:=robotiq2f_140 publish_joint_state:=false publish_robot_state:=false

    # Terminal 3
    rosbag play --clock -l data/withpointcloud.bag
    ```

### 1. Basic

```
cd ~/catkin_ws  # catkin_ws path
catkin_make # compile package
source devel/setup.bash # source
rosrun edge_detection edge_detection_bin # run the code
```

#### Concept Description
We need a algorithm which is scale and rotation invariant. Also, it should be robust to noise.
Thus we remove noise with gaussian blur and apply Canny Edge detection. The Canny Edge Detector is a multi-stage algorithm used for edge detection in images, 
known for its ability to detect a wide range of edges while minimizing noise. It is commonly used because it provides good localization of edges and is computationally efficient.

#### Implementation 
1. We read the image
2. Prepare image for edge detection by convert to grayscale.
3. Appply Gaussian Blur to remove noise.
4. Apply Canny Edge detection.
5. Superimpose the detected edges on original image and return it.

###  2. Vision_ROS

#### Implementation
<!-- 1. Create a new ROS package called  'edge_detection_service'

catkin_create_pkg edge_detection_service std_msgs sensor_msgs rospy roscpp -->

Great to hear that you've completed the basic challenge! Now, let's move on to the second challenge, Vision_ROS. Here's a step-by-step guide to tackle this challenge:

### Step 1: Create ROS .srv and .msg Files

1. **Create a new ROS package** (if you haven't already) for your edge detection service.
    ```bash
    catkin_create_pkg edge_detection_service std_msgs sensor_msgs rospy roscpp
    ```

2. **Create a `.srv` file** for the edge detection service. Let's call it `EdgeDetection.srv` and place it in the `srv` folder of your package.
    ```
    # EdgeDetection.srv
    sensor_msgs/Image input_image
    ---
    sensor_msgs/Image edge_image
    ```

3. **Create a `.msg` file** for the edge points. Let's call it `EdgePoint.msg` and place it in the `msg` folder of your package.
    ```
    # EdgePoint.msg
    float64 x
    float64 y
    float64 z
    ```

4. **Modify your `CMakeLists.txt` and `package.xml`** to include the message generation and service generation steps.

### Step 2: Implement the ROS Service

1. We use the previous implementation of edge detection algorithm by modify edge_detection Package to create a library
2. We modify edge_detection_service package to use the Library
3. Create ROS Service in edge_detection_service
<!-- 1. Implement the ROS service in C++ or Python that uses your edge detection algorithm. Use the `.srv` file you created for defining the service type. -->

#### Test
`rosservice call` or using a client


### Step 3: Create a Client Example

1. Create a ROS node that acts as a client to your service. This node should read image files from a directory, send them to the edge detection service, and receive the edge-detected images.

### Step 4: Subscribe to Image Topic from ROS Bag

1. Create a ROS node that subscribes to the image topic from the given ROS bag file.
2. Use this node to send images to your edge detection service.
3. Visualize the input and output images in RViz.

### Step 5: Convert to 3D Data

1. Use the depth images and camera parameters from the ROS bag file to convert the edge pixels to 3D coordinates (x, y, z).
2. Publish these coordinates to a ROS topic named `edge_points` of type `sensor_msgs/PointCloud`.
