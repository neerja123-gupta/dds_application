# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "dds_application: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(dds_application_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/neerja/catkin_ws/src/dds_application/dds_application/srv/Calculator.srv" NAME_WE)
add_custom_target(_dds_application_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dds_application" "/home/neerja/catkin_ws/src/dds_application/dds_application/srv/Calculator.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(dds_application
  "/home/neerja/catkin_ws/src/dds_application/dds_application/srv/Calculator.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dds_application
)

### Generating Module File
_generate_module_cpp(dds_application
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dds_application
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(dds_application_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(dds_application_generate_messages dds_application_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/neerja/catkin_ws/src/dds_application/dds_application/srv/Calculator.srv" NAME_WE)
add_dependencies(dds_application_generate_messages_cpp _dds_application_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dds_application_gencpp)
add_dependencies(dds_application_gencpp dds_application_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dds_application_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(dds_application
  "/home/neerja/catkin_ws/src/dds_application/dds_application/srv/Calculator.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dds_application
)

### Generating Module File
_generate_module_eus(dds_application
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dds_application
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(dds_application_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(dds_application_generate_messages dds_application_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/neerja/catkin_ws/src/dds_application/dds_application/srv/Calculator.srv" NAME_WE)
add_dependencies(dds_application_generate_messages_eus _dds_application_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dds_application_geneus)
add_dependencies(dds_application_geneus dds_application_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dds_application_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(dds_application
  "/home/neerja/catkin_ws/src/dds_application/dds_application/srv/Calculator.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dds_application
)

### Generating Module File
_generate_module_lisp(dds_application
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dds_application
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(dds_application_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(dds_application_generate_messages dds_application_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/neerja/catkin_ws/src/dds_application/dds_application/srv/Calculator.srv" NAME_WE)
add_dependencies(dds_application_generate_messages_lisp _dds_application_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dds_application_genlisp)
add_dependencies(dds_application_genlisp dds_application_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dds_application_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(dds_application
  "/home/neerja/catkin_ws/src/dds_application/dds_application/srv/Calculator.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dds_application
)

### Generating Module File
_generate_module_nodejs(dds_application
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dds_application
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(dds_application_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(dds_application_generate_messages dds_application_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/neerja/catkin_ws/src/dds_application/dds_application/srv/Calculator.srv" NAME_WE)
add_dependencies(dds_application_generate_messages_nodejs _dds_application_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dds_application_gennodejs)
add_dependencies(dds_application_gennodejs dds_application_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dds_application_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(dds_application
  "/home/neerja/catkin_ws/src/dds_application/dds_application/srv/Calculator.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dds_application
)

### Generating Module File
_generate_module_py(dds_application
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dds_application
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(dds_application_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(dds_application_generate_messages dds_application_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/neerja/catkin_ws/src/dds_application/dds_application/srv/Calculator.srv" NAME_WE)
add_dependencies(dds_application_generate_messages_py _dds_application_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dds_application_genpy)
add_dependencies(dds_application_genpy dds_application_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dds_application_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dds_application)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dds_application
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(dds_application_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dds_application)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dds_application
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(dds_application_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dds_application)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dds_application
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(dds_application_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dds_application)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dds_application
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(dds_application_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dds_application)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dds_application\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dds_application
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(dds_application_generate_messages_py std_msgs_generate_messages_py)
endif()
