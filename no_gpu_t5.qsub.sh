#   For further info please read http://hpc.cs.ucl.ac.uk
#   For cluster help email cluster-support@cs.ucl.ac.uk
#
#   NOTE hash dollar is a scheduler directive not a comment.

# These are flags you must include - Two memory and one runtime.
# Runtime is either seconds or hours:min:sec
# This version of the script runs without GPU
# change line beginning -t 1-40: the number 40 should be the number of rows in your dataset
# change line beginning -t wd: this is your working directory e.g. home
# change line source t5_env/bin/activate so that it activates the path to your virtual environment


#$ -l tmem=16G
#$ -l h_rt=2:30:02
#$ -t 1-40
#These are optional flags but you probably want them in all jobs

#$ -S /bin/bash
#$ -j y
#$ -N t5
#$ -wd /SAN/cath/cath_v4_3_0/jude/t5_basic

#The code you want to run now goes here.
hostname
date
#export PATH=/share/apps/python-3.8.5-shared/bin:$PATH
#export LD_LIBRARY_PATH=/share/apps/python-3.8.5-shared/lib:$LD_LIBRARY_PATH
# source /share/apps/source_files/python/python-3.8.5.source
source t5_env/bin/activate
python3 --version
python3  main.py $SGE_TASK_ID
date
