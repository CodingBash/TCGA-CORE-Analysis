#!/bin/bash
#$ -S /bin/bash
#$ -cwd
#  specify that the job requires 16GB of memory
#$ -l m_mem_free=16G

# run commands and application
source /sonas-hs/it/hpc/home/easybuild/lmod-setup.sh
module use -a /sonas-hs/tuveson/hpc/home/software/modulefiles
module load RBio/3.6.0

pwd
date
Rscript tcgaFacetsCoreGenerationHPCJob.R A AtcgaCoreTableBP AtcgaCOREobjBP ${tumorID}
date

