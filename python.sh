#BSUB -Is
#BSUB -R "rusage[mem=8000]"
#BSUB -q rvmartin-interactive
#BSUB -a 'docker(acag/python)'
zsh
