## Getting started
1. Log into compute1
2. Run the following snippet
    ```
    cd ~
    wget -qO- https://github.com/Atmospheric-Composition-Analysis-Group/compute1/archive/master.tar.gz | tar -xzf -
    echo "export source $HOME/compute1/head-node.rc" >> $HOME/.bashrc
    ```
4. Edit `~/compute1/head-node.rc` and replace `lbindle` in the `LSF_DOCKER_VOLUMES` variable with the name of your personal projects directory on storage1.


### Running interactive jobs
```
bsub < compute1/interactive.sh
```

### Running interactive matlab jobs
```
bsub < compute1/matlab.sh
```

### Running interactive python jobs
```
bsub < compute1/python.sh
```

### The layout of the directories
If you are on a compute node there will be the following directories:
- `/ExtData`: This is GEOS-Chem's ExtData directory
- `/my-projects`: This is where you should put your project directories. You can put large files and directories here.

If you are on the head node (or Globus) the directory layout is as follows:
- `/storage1/fs1/rvmartin/Active/GEOS-Chem-shared`: This is where `/ExtData` mounts to in containers
- `/storage1/fs1/rvmartin/Active/<your name>`: This is where `/my-projects` mounts to in containers

If you're on Globus, the endpoint is called "Wash U RIS storage1 dtn1". You'll get "Permission Denied" until you navigate to `/storage1/rvmartin/Active`. Then, the directory layout is as follows:
- `/storage1/rvmartin/Active/GEOS-Chem-shared`: This is where `/ExtData` mounts to in containers
- `/storage1/rvmartin/Active/<your name>`: This is where `/my-projects` mounts to in containers

### Creating shared project directories
To create shared project directories, you'll have to submit a ticket.

## To update these scripts
In the future, when you want to update these scripts, do the following
```
cd ~
wget -qO- https://github.com/Atmospheric-Composition-Analysis-Group/compute1/archive/master.tar.gz | tar -xzf -
```
