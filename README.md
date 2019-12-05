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
- `~`: This is your `$HOME` directory. This is where you will land when you ssh into compute1, and you should put environment configuration files (e.g. `.bashrc`, `.ssh/`. `.geoschem/`) here. If you don't know what these files are, ignore this directory.

## To update these scripts
In the future, when you want to update these scripts, do the following
```
cd ~
wget -qO- https://github.com/Atmospheric-Composition-Analysis-Group/compute1/archive/master.tar.gz | tar -xzf -
```
