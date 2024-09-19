#!/bin/bash

# Module loads
module load python/3.10
source ../july_2024/py310/bin/activate

# Copy validation files to slurm directory
cp /project/rrg-kyi/astro/hsc/HSC_dud_galaxy_GIRYZ7610_64_new.h5 $SLURM_TMPDIR
cp /project/rrg-kyi/astro/hsc/HSC_dud_simple_classifier_data_GIRYZ7610_64.h5 $SLURM_TMPDIR
cp /project/rrg-kyi/astro/hsc/HSC_dud_simple_regressor_data_GIRYZ7610_64.h5 $SLURM_TMPDIR

# then for purple plotting:
python pretrain_mim.py mim_test5_multigpu_paper -v 1000 -ct 10.00 -dd $SLURM_TMPDIR/

