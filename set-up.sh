#!/bin/bash
set +H

# Go to home directory
cd ~

# Check that 1 argument was passed
if [ $# -ne 1 ]; then
  echo "error: You didn't tell me which directory in /storage1/fs1/rvmartin/Active/ is yours"
  exit 1
fi

# Find the /my-projects directory
MY_PROJECTS_DIR=/storage1/fs1/rvmartin/Active/$1
ls $MY_PROJECTS_DIR &> /dev/null
if [ $? != 0 ]; then
 echo "error: $MY_PROJECTS_DIR is inaccessible"
 exit 1
fi

# Download head-node.rc and interactive.bsub
wget -qO- https://raw.githubusercontent.com/Atmospheric-Composition-Analysis-Group/compute1/master/head-node.rc | sed "s#MY_PROJECTS_DIR=[a-zA-Z0-9_-\./]*#MY_PROJECTS_DIR=$MY_PROJECTS_DIR#g" > head-node.rc
wget -qO- https://raw.githubusercontent.com/Atmospheric-Composition-Analysis-Group/compute1/master/interactive.bsub > interactive.bsub

# Modify ~/.bashrc to load head-node.rc
if ! $(grep -q '# Source ~/head-node.rc if we are on the head-node' ~/.bashrc); then
    echo '
# Source ~/head-node.rc if we are on the head-node
if $(hostname | grep -q "compute1-client"); then
    source $HOME/head-node.rc
fi
' >> ~/.bashrc
fi

# Create links to my-projects and Shared
ln -s $MY_PROJECTS_DIR /my-projects &> /dev/null
ln -s /storage1/fs1/rvmartin/Active/Shared &> /dev/null

# Delete this file
rm ./set-up.sh