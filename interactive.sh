#BSUB -Is
#BSUB -R "rusage[mem=8000]"
#BSUB -q rvmartin-interactive
#BSUB -a 'docker(acag/interactive)'
source $HOME/compute1/compute-node.rc
cd /my-projects
zsh
