# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "vision1: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ivision1:/home/lwh/Desktop/Learning/shenlanROS/catkin_ws/src/vision1/msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(vision1_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/lwh/Desktop/Learning/shenlanROS/catkin_ws/src/vision1/msg/Size.msg" NAME_WE)
add_custom_target(_vision1_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vision1" "/home/lwh/Desktop/Learning/shenlanROS/catkin_ws/src/vision1/msg/Size.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(vision1
  "/home/lwh/Desktop/Learning/shenlanROS/catkin_ws/src/vision1/msg/Size.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vision1
)

### Generating Services

### Generating Module File
_generate_module_cpp(vision1
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vision1
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(vision1_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(vision1_generate_messages vision1_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lwh/Desktop/Learning/shenlanROS/catkin_ws/src/vision1/msg/Size.msg" NAME_WE)
add_dependencies(vision1_generate_messages_cpp _vision1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vision1_gencpp)
add_dependencies(vision1_gencpp vision1_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vision1_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(vision1
  "/home/lwh/Desktop/Learning/shenlanROS/catkin_ws/src/vision1/msg/Size.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vision1
)

### Generating Services

### Generating Module File
_generate_module_eus(vision1
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vision1
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(vision1_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(vision1_generate_messages vision1_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lwh/Desktop/Learning/shenlanROS/catkin_ws/src/vision1/msg/Size.msg" NAME_WE)
add_dependencies(vision1_generate_messages_eus _vision1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vision1_geneus)
add_dependencies(vision1_geneus vision1_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vision1_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(vision1
  "/home/lwh/Desktop/Learning/shenlanROS/catkin_ws/src/vision1/msg/Size.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vision1
)

### Generating Services

### Generating Module File
_generate_module_lisp(vision1
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vision1
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(vision1_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(vision1_generate_messages vision1_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lwh/Desktop/Learning/shenlanROS/catkin_ws/src/vision1/msg/Size.msg" NAME_WE)
add_dependencies(vision1_generate_messages_lisp _vision1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vision1_genlisp)
add_dependencies(vision1_genlisp vision1_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vision1_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(vision1
  "/home/lwh/Desktop/Learning/shenlanROS/catkin_ws/src/vision1/msg/Size.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vision1
)

### Generating Services

### Generating Module File
_generate_module_nodejs(vision1
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vision1
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(vision1_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(vision1_generate_messages vision1_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lwh/Desktop/Learning/shenlanROS/catkin_ws/src/vision1/msg/Size.msg" NAME_WE)
add_dependencies(vision1_generate_messages_nodejs _vision1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vision1_gennodejs)
add_dependencies(vision1_gennodejs vision1_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vision1_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(vision1
  "/home/lwh/Desktop/Learning/shenlanROS/catkin_ws/src/vision1/msg/Size.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vision1
)

### Generating Services

### Generating Module File
_generate_module_py(vision1
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vision1
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(vision1_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(vision1_generate_messages vision1_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lwh/Desktop/Learning/shenlanROS/catkin_ws/src/vision1/msg/Size.msg" NAME_WE)
add_dependencies(vision1_generate_messages_py _vision1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vision1_genpy)
add_dependencies(vision1_genpy vision1_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vision1_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vision1)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vision1
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(vision1_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(vision1_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vision1)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vision1
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(vision1_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(vision1_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vision1)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vision1
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(vision1_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(vision1_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vision1)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vision1
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(vision1_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(vision1_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vision1)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vision1\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vision1
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(vision1_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(vision1_generate_messages_py std_msgs_generate_messages_py)
endif()
