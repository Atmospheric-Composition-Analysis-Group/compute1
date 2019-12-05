## Getting started
1. Log into compute1
2. Run the following snippet
3 Clone this repo
    ```
    cd ~
    git clone https://github.com/Atmospheric-Composition-Analysis-Group/compute1
    ```
4. Add the following line to the end of `~/.bashrc`
    ```
    source $HOME/compute1/head-node.rc
    ```
5. Edit `~/compute1/head-node.rc` and replace `lbindle` in the `LSF_DOCKER_VOLUMES` variable with the name of your personal projects directory on storage1.
