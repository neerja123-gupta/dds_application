# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "geometry_msgs;message_runtime;roscpp;rospy;std_msgs".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-ldds_application".split(';') if "-ldds_application" != "" else []
PROJECT_NAME = "dds_application"
PROJECT_SPACE_DIR = "/usr/local"
PROJECT_VERSION = "0.0.0"