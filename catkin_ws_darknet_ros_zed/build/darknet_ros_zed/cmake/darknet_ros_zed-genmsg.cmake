# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "darknet_ros_zed: 1 messages, 0 services")

set(MSG_I_FLAGS "-Idarknet_ros_zed:/home/chen/qtProjects/catkin_ws_darknet_ros_zed/src/darknet_ros_zed/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(darknet_ros_zed_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/chen/qtProjects/catkin_ws_darknet_ros_zed/src/darknet_ros_zed/msg/coordinate_msgs.msg" NAME_WE)
add_custom_target(_darknet_ros_zed_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "darknet_ros_zed" "/home/chen/qtProjects/catkin_ws_darknet_ros_zed/src/darknet_ros_zed/msg/coordinate_msgs.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(darknet_ros_zed
  "/home/chen/qtProjects/catkin_ws_darknet_ros_zed/src/darknet_ros_zed/msg/coordinate_msgs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/darknet_ros_zed
)

### Generating Services

### Generating Module File
_generate_module_cpp(darknet_ros_zed
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/darknet_ros_zed
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(darknet_ros_zed_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(darknet_ros_zed_generate_messages darknet_ros_zed_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chen/qtProjects/catkin_ws_darknet_ros_zed/src/darknet_ros_zed/msg/coordinate_msgs.msg" NAME_WE)
add_dependencies(darknet_ros_zed_generate_messages_cpp _darknet_ros_zed_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(darknet_ros_zed_gencpp)
add_dependencies(darknet_ros_zed_gencpp darknet_ros_zed_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS darknet_ros_zed_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(darknet_ros_zed
  "/home/chen/qtProjects/catkin_ws_darknet_ros_zed/src/darknet_ros_zed/msg/coordinate_msgs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/darknet_ros_zed
)

### Generating Services

### Generating Module File
_generate_module_eus(darknet_ros_zed
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/darknet_ros_zed
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(darknet_ros_zed_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(darknet_ros_zed_generate_messages darknet_ros_zed_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chen/qtProjects/catkin_ws_darknet_ros_zed/src/darknet_ros_zed/msg/coordinate_msgs.msg" NAME_WE)
add_dependencies(darknet_ros_zed_generate_messages_eus _darknet_ros_zed_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(darknet_ros_zed_geneus)
add_dependencies(darknet_ros_zed_geneus darknet_ros_zed_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS darknet_ros_zed_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(darknet_ros_zed
  "/home/chen/qtProjects/catkin_ws_darknet_ros_zed/src/darknet_ros_zed/msg/coordinate_msgs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/darknet_ros_zed
)

### Generating Services

### Generating Module File
_generate_module_lisp(darknet_ros_zed
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/darknet_ros_zed
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(darknet_ros_zed_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(darknet_ros_zed_generate_messages darknet_ros_zed_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chen/qtProjects/catkin_ws_darknet_ros_zed/src/darknet_ros_zed/msg/coordinate_msgs.msg" NAME_WE)
add_dependencies(darknet_ros_zed_generate_messages_lisp _darknet_ros_zed_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(darknet_ros_zed_genlisp)
add_dependencies(darknet_ros_zed_genlisp darknet_ros_zed_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS darknet_ros_zed_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(darknet_ros_zed
  "/home/chen/qtProjects/catkin_ws_darknet_ros_zed/src/darknet_ros_zed/msg/coordinate_msgs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/darknet_ros_zed
)

### Generating Services

### Generating Module File
_generate_module_nodejs(darknet_ros_zed
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/darknet_ros_zed
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(darknet_ros_zed_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(darknet_ros_zed_generate_messages darknet_ros_zed_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chen/qtProjects/catkin_ws_darknet_ros_zed/src/darknet_ros_zed/msg/coordinate_msgs.msg" NAME_WE)
add_dependencies(darknet_ros_zed_generate_messages_nodejs _darknet_ros_zed_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(darknet_ros_zed_gennodejs)
add_dependencies(darknet_ros_zed_gennodejs darknet_ros_zed_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS darknet_ros_zed_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(darknet_ros_zed
  "/home/chen/qtProjects/catkin_ws_darknet_ros_zed/src/darknet_ros_zed/msg/coordinate_msgs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/darknet_ros_zed
)

### Generating Services

### Generating Module File
_generate_module_py(darknet_ros_zed
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/darknet_ros_zed
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(darknet_ros_zed_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(darknet_ros_zed_generate_messages darknet_ros_zed_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chen/qtProjects/catkin_ws_darknet_ros_zed/src/darknet_ros_zed/msg/coordinate_msgs.msg" NAME_WE)
add_dependencies(darknet_ros_zed_generate_messages_py _darknet_ros_zed_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(darknet_ros_zed_genpy)
add_dependencies(darknet_ros_zed_genpy darknet_ros_zed_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS darknet_ros_zed_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/darknet_ros_zed)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/darknet_ros_zed
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(darknet_ros_zed_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/darknet_ros_zed)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/darknet_ros_zed
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(darknet_ros_zed_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/darknet_ros_zed)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/darknet_ros_zed
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(darknet_ros_zed_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/darknet_ros_zed)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/darknet_ros_zed
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(darknet_ros_zed_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/darknet_ros_zed)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/darknet_ros_zed\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/darknet_ros_zed
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(darknet_ros_zed_generate_messages_py std_msgs_generate_messages_py)
endif()
