#!/bin/bash
#SBATCH --nodes 1
#SBATCH --partition=serial
#SBATCH --ntasks-per-node 1
#SBATCH --cpus-per-task 1
#SBATCH --mem 4096
#SBATCH --time 10:00:00
#SBATCH --array=1-200
#SBATCH --output=/scratch/hartevel/logs/_output.%A..%a.out
#SBATCH --error=/scratch/hartevel/logs/_output.%A..%a.err

srun /work/lpdi/users/hartevel/bin/Rosetta_03_2020/main/source/bin/rosetta_scripts.linuxiccrelease -parser:protocol srch3SD202/natlik/betasandwich70120/l885/corrections4XYZZ/mid/lmaster/connectivity/B1E.B2E.A3E.A4E.B3E.A2E.A1E/funfoldes/funfoldes_fold.xml -in:file:s srch3SD202/natlik/betasandwich70120/l885/corrections4XYZZ/mid/lmaster/connectivity/B1E.B2E.A3E.A4E.B3E.A2E.A1E/funfoldes/template_sketch.pdb -out:prefix srch3SD202_natlik_betasandwich70120_l885_corrections4XYZZ_mid_lmaster_${SLURM_ARRAY_TASK_ID}_funfol_ -out:file:silent srch3SD202/natlik/betasandwich70120/l885/corrections4XYZZ/mid/lmaster/connectivity/B1E.B2E.A3E.A4E.B3E.A2E.A1E/funfoldes/outputs/srch3SD202_natlik_betasandwich70120_l885_corrections4XYZZ_mid_lmaster_${SLURM_ARRAY_TASK_ID}_funfol.silent -nstruct 1 -overwrite -in:ignore_unrecognized_res -in:ignore_waters -out:file:silent_struct_type binary -out:mute protocols.abinitio protocols.moves core.optimization
srun /work/lpdi/users/hartevel/bin/Rosetta_03_2020/main/source/bin/rosetta_scripts.linuxiccrelease -parser:protocol srch3SD202/natlik/betasandwich70120/l885/corrections4XYZZ/mid/lmaster/connectivity/B1E.B2E.A3E.A4E.B3E.A2E.A1E/funfoldes/funfoldes_design.xml -in:file:silent srch3SD202/natlik/betasandwich70120/l885/corrections4XYZZ/mid/lmaster/connectivity/B1E.B2E.A3E.A4E.B3E.A2E.A1E/funfoldes/outputs/srch3SD202_natlik_betasandwich70120_l885_corrections4XYZZ_mid_lmaster_${SLURM_ARRAY_TASK_ID}_funfol.silent -out:prefix srch3SD202_natlik_betasandwich70120_l885_corrections4XYZZ_mid_lmaster_${SLURM_ARRAY_TASK_ID}_des_ -out:file:silent srch3SD202/natlik/betasandwich70120/l885/corrections4XYZZ/mid/lmaster/connectivity/B1E.B2E.A3E.A4E.B3E.A2E.A1E/funfoldes/outputs/srch3SD202_natlik_betasandwich70120_l885_corrections4XYZZ_mid_lmaster_${SLURM_ARRAY_TASK_ID}_des.silent -nstruct 10 -overwrite -in:ignore_unrecognized_res -in:ignore_waters -out:file:silent_struct_type binary -out:mute protocols.abinitio protocols.moves core.optimization
