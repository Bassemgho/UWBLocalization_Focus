# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "tuto2: 2 messages, 0 services")

set(MSG_I_FLAGS "-Ituto2:/home/bassem/catkin_ws/src/tuto2/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(tuto2_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/bassem/catkin_ws/src/tuto2/msg/Person.msg" NAME_WE)
add_custom_target(_tuto2_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tuto2" "/home/bassem/catkin_ws/src/tuto2/msg/Person.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/bassem/catkin_ws/src/tuto2/msg/Ranging.msg" NAME_WE)
add_custom_target(_tuto2_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tuto2" "/home/bassem/catkin_ws/src/tuto2/msg/Ranging.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(tuto2
  "/home/bassem/catkin_ws/src/tuto2/msg/Person.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tuto2
)
_generate_msg_cpp(tuto2
  "/home/bassem/catkin_ws/src/tuto2/msg/Ranging.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tuto2
)

### Generating Services

### Generating Module File
_generate_module_cpp(tuto2
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tuto2
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(tuto2_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(tuto2_generate_messages tuto2_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bassem/catkin_ws/src/tuto2/msg/Person.msg" NAME_WE)
add_dependencies(tuto2_generate_messages_cpp _tuto2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bassem/catkin_ws/src/tuto2/msg/Ranging.msg" NAME_WE)
add_dependencies(tuto2_generate_messages_cpp _tuto2_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tuto2_gencpp)
add_dependencies(tuto2_gencpp tuto2_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tuto2_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(tuto2
  "/home/bassem/catkin_ws/src/tuto2/msg/Person.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tuto2
)
_generate_msg_eus(tuto2
  "/home/bassem/catkin_ws/src/tuto2/msg/Ranging.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tuto2
)

### Generating Services

### Generating Module File
_generate_module_eus(tuto2
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tuto2
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(tuto2_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(tuto2_generate_messages tuto2_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bassem/catkin_ws/src/tuto2/msg/Person.msg" NAME_WE)
add_dependencies(tuto2_generate_messages_eus _tuto2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bassem/catkin_ws/src/tuto2/msg/Ranging.msg" NAME_WE)
add_dependencies(tuto2_generate_messages_eus _tuto2_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tuto2_geneus)
add_dependencies(tuto2_geneus tuto2_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tuto2_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(tuto2
  "/home/bassem/catkin_ws/src/tuto2/msg/Person.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tuto2
)
_generate_msg_lisp(tuto2
  "/home/bassem/catkin_ws/src/tuto2/msg/Ranging.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tuto2
)

### Generating Services

### Generating Module File
_generate_module_lisp(tuto2
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tuto2
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(tuto2_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(tuto2_generate_messages tuto2_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bassem/catkin_ws/src/tuto2/msg/Person.msg" NAME_WE)
add_dependencies(tuto2_generate_messages_lisp _tuto2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bassem/catkin_ws/src/tuto2/msg/Ranging.msg" NAME_WE)
add_dependencies(tuto2_generate_messages_lisp _tuto2_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tuto2_genlisp)
add_dependencies(tuto2_genlisp tuto2_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tuto2_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(tuto2
  "/home/bassem/catkin_ws/src/tuto2/msg/Person.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tuto2
)
_generate_msg_nodejs(tuto2
  "/home/bassem/catkin_ws/src/tuto2/msg/Ranging.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tuto2
)

### Generating Services

### Generating Module File
_generate_module_nodejs(tuto2
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tuto2
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(tuto2_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(tuto2_generate_messages tuto2_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bassem/catkin_ws/src/tuto2/msg/Person.msg" NAME_WE)
add_dependencies(tuto2_generate_messages_nodejs _tuto2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bassem/catkin_ws/src/tuto2/msg/Ranging.msg" NAME_WE)
add_dependencies(tuto2_generate_messages_nodejs _tuto2_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tuto2_gennodejs)
add_dependencies(tuto2_gennodejs tuto2_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tuto2_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(tuto2
  "/home/bassem/catkin_ws/src/tuto2/msg/Person.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tuto2
)
_generate_msg_py(tuto2
  "/home/bassem/catkin_ws/src/tuto2/msg/Ranging.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tuto2
)

### Generating Services

### Generating Module File
_generate_module_py(tuto2
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tuto2
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(tuto2_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(tuto2_generate_messages tuto2_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bassem/catkin_ws/src/tuto2/msg/Person.msg" NAME_WE)
add_dependencies(tuto2_generate_messages_py _tuto2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bassem/catkin_ws/src/tuto2/msg/Ranging.msg" NAME_WE)
add_dependencies(tuto2_generate_messages_py _tuto2_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tuto2_genpy)
add_dependencies(tuto2_genpy tuto2_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tuto2_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tuto2)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tuto2
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(tuto2_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tuto2)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tuto2
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(tuto2_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tuto2)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tuto2
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(tuto2_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tuto2)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tuto2
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(tuto2_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tuto2)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tuto2\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tuto2
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(tuto2_generate_messages_py std_msgs_generate_messages_py)
endif()
