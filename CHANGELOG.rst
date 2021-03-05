^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Changelog for package clearpath_oak
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

0.1.0 (2021-03-04)
------------------
* Add the README
* Rename the node to "oak_node" put all the launch topics in a namespace for cleanliness
* Use the vision_msgs instead of rolling our own versions. Fix the msg dependencies. Add a .rosinstall file to track the external dependencies
* Someone from Luxonis got back to me about the actual categories the sample NN can classify, so fill that into a yaml file we load as a param.  Include the ROI of the image in the DetectedObject message
* Add preliminary support for consuming data from the ANN classifier
* Minor cleanup, experimenting to fix the pointcloud scaling. No success on the latter
* Giant commit; initially functioning code with published color & depth streams, plus pointcloud.  Pointcloud data feels wonky, and like it's not scaled correctly, but it's a start
* Create the empty package
* Contributors: Chris Iverach-Brereton
