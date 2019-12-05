#BSUB -Is
#BSUB -R "rusage[mem=8000]"
#BSUB -q rvmartin-interactive
#BSUB -a 'docker(registry.gsc.wustl.edu/sleong/matlab-2019a)'
export PATH=$PATH:/matlab/bin
cd /my-projects
bash
