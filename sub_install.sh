#!/bin/bash
#SBATCH --job-name=pyquda_install%j
#SBATCH --partition=gpu-debug
#SBATCH --nodes=1
# #SBATCH --cpus-per-task=1
# #SBATCH -n 48
#SBATCH --ntasks-per-node=48
# #SBATCH --nodelist=node[3,4]
# #SBATCH --exclude=node[1,5-6]
#SBATCH --time=00-00:30:00
#SBATCH --output=pyquda_install%j.out
#SBATCH --error=pyquda_install%j.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=zhangxin8069@qq.com

source ./env.sh
bash ./install.sh
