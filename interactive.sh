#BSUB -Is
#BSUB -R "rusage[mem=40000] span[hosts=1]"
#BSUB -q rvmartin-interactive
#BSUB -a 'docker(registry.gsc.wustl.edu/sleong/ifort-icc-mpi:esmf)'
#BSUB -n 8

set -x
set -e
ulimit -s unlimited
export OMP_STACKSIZE=500m
export OMP_NUM_THREADS=$LSB_DJOB_NUMPROC

source $HOME/compute1/compute-node.rc
cd /my-projects
zsh
