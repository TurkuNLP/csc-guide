# Credits to Samuel
# how to check GPU memory usage on puhti: check compute node name with squeue, then, e.g.

ssh r18g02
nvidia-smi -l

# (note that seff and #SBATCH --mem refers to CPU memory)
