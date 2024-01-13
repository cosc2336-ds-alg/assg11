# source files in this project 
PROJECT_NAME=assg11

assg_src  = BinaryTree.cpp \
	    BinaryTreeException.cpp \
	    BinaryTreeNode.cpp \
	    Employee.cpp \
	    LBinaryTree.cpp

test_src  = ${PROJECT_NAME}-BinaryTreeNode-tests.cpp \
	    ${PROJECT_NAME}-LBinaryTree-tests.cpp \
	    ${assg_src}

sim_src   = ${PROJECT_NAME}-sim.cpp \
	    ${assg_src}

# template files, list all files that define template classes
# or functions and should not be compiled separately (template
# is included where used)
template_files =

# assignment description documentation
assg_doc  = ${PROJECT_NAME}.pdf

# common targets and variables used for all assignments/projects
include include/Makefile.inc

# assignment header file specific dependencies
${OBJ_DIR}/BinaryTree.o: ${SRC_DIR}/BinaryTree.cpp ${INC_DIR}/BinaryTree.hpp
${OBJ_DIR}/BinaryTreeException.o: ${SRC_DIR}/BinaryTreeException.cpp ${INC_DIR}/BinaryTreeException.hpp
${OBJ_DIR}/BinaryTreeNode.o: ${SRC_DIR}/BinaryTreeNode.cpp ${INC_DIR}/BinaryTreeNode.hpp
${OBJ_DIR}/Employee.o: ${SRC_DIR}/Employee.cpp ${INC_DIR}/Employee.hpp
${OBJ_DIR}/LBinaryTree.o: ${SRC_DIR}/LBinaryTree.cpp ${INC_DIR}/LBinaryTree.hpp
${OBJ_DIR}/${PROJECT_NAME}-BinaryTreeNode-tests.o: ${SRC_DIR}/${PROJECT_NAME}-BinaryTreeNode-tests.cpp ${INC_DIR}/BinaryTreeNode.hpp ${INC_DIR}/Employee.hpp
${OBJ_DIR}/${PROJECT_NAME}-LBinaryTree-tests.o: ${SRC_DIR}/${PROJECT_NAME}-LBinaryTree-tests.cpp ${INC_DIR}/BinaryTreeNode.hpp ${INC_DIR}/BinaryTreeException.hpp
${OBJ_DIR}/${PROJECT_NAME}-sim.o: ${SRC_DIR}/${PROJECT_NAME}-sim.cpp ${INC_DIR}/BinaryTree.hpp ${INC_DIR}/BinaryTreeNode.hpp
