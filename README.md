clearpath_oak
===============

This was Chris Iverach-Brereton's March 4, 2021 Hack Day project at Clearpath.

(More) Detailed notes on the day's activities, as well as development screenshots can be found here:
https://wiki.clearpathrobotics.com/display/~civerachb/OAK-D+Evaluation


Dependencies
-------------

This package requires the noetic-devel version of `vision_msgs` (which also works on Melodic), as well as the
OAK-D/Luxonis/DepthAI Python API.

`vision_msgs` can be installed & tracked using the included `depends.rosinstall` file combined with `wstool`

To install the DepthAI Python API run the scripts/setup.sh script from this repo.


Running `oak_node`
-------------------

The core feature of this repo is the `oak_node`, which handles all interaction with the OAK-D hardware.

The easiest way to start the node is to run

    roslaunch clearpath_oak oak.launch

This will create the `oak_node` with the sample neural network provided by Lunxonis (the blob file in the `nn`
folder).  This ANN will classify objects according to the categories found in `config/categories.yaml`

The raw left/right mono images, stereo depth image, and RGB image are all available as raw image topics from the
node.

The detected objects are published on the `detected_objects` topic, and are of type `clearpath_oak/DetectedObject`.
This include the classification ID, human-readible label, bounding-box, and the cropped image where the object
is located in the RGB stream.


Known Issues
--------------

`oak.launch` also creates a `depth_image_proc` nodelet to create a pointcloud, published as `stereo/points`, though
as of this writing there is a bug in the camera calibration that results in the pointcloud being far too small.


Future Work
------------

Eventually I want to replace/augment the RGB image field in the `DetectedObject` message with the partial pointcloud
representing the object in 3D space.  Due to the bug described above, and time constraints, I was unable to
get started on that.

Once the pointclouds of detected objects are done, an rviz plugin to render the objects is the next logical step.
