#!/bin/sh
#SBATCH -N 1      # nodes requested
#SBATCH -n 1      # tasks requested
#SBATCH --gres=gpu:1
#SBATCH --mem=8000  # memory in Mb
#SBATCH --cpus-per-task=8
#SBATCH --time=0-10:00:00
#SBATCH -o output/em-%A_%a.txt  # send stdout to outfile
#SBATCH -e output/em_error-%A_%a.txt  # send stderr to errfile
#SBATCH --partition=apollo

source ~/.bashrc
conda activate deconv

python deconv/experiments/gaia/fit_gaia_lim_em.py -c 64 -b 500 -e 20 -s 0.01 -w=0.001 -k 10 --lr-step 10 --lr-gamma 0.5 --use-cuda data/gaia_sample_mag.npz results/em_64_${SLURM_JOBID}
python deconv/experiments/gaia/fit_gaia_lim_em.py -c 128 -b 500 -e 20 -s 0.01 -w=0.001 -k 10 --lr-step 10 --lr-gamma 0.5 --use-cuda data/gaia_sample_mag.npz results/em_128_${SLURM_JOBID}
python deconv/experiments/gaia/fit_gaia_lim_em.py -c 256 -b 500 -e 20 -s 0.01 -w=0.001 -k 10 --lr-step 10 --lr-gamma 0.5 --use-cuda data/gaia_sample_mag.npz results/em_256_${SLURM_JOBID}
python deconv/experiments/gaia/fit_gaia_lim_em.py -c 512 -b 500 -e 20 -s 0.01 -w=0.001 -k 10 --lr-step 10 --lr-gamma 0.5 --use-cuda data/gaia_sample_mag.npz results/em_512_${SLURM_JOBID}
