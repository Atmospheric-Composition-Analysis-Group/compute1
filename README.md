## Getting started
1. Log into compute1
2. Run the following snippet
    ```
    cd ~
    wget -qO- https://github.com/Atmospheric-Composition-Analysis-Group/compute1/archive/master.tar.gz | tar -xzf -
    echo "export source $HOME/compute1/head-node.rc" >> $HOME/.bashrc
    ```
4. Edit `~/compute1/head-node.rc` and replace `lbindle` in the `LSF_DOCKER_VOLUMES` variable with the name of your personal projects directory on storage1.

## To update
In the future, when you want to update these scripts, do the following
```
cd ~
wget -qO- https://github.com/Atmospheric-Composition-Analysis-Group/compute1/archive/master.tar.gz | tar -xzf -
```
