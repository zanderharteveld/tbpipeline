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

srun /work/lpdi/users/hartevel/bin/Rosetta_03_2020/main/source/bin/rosetta_scripts.linuxiccrelease -parser:protocol srch6E5C02/naive/l44/connectivity/A1E.B1E.A3E.B3E.B4E.A4E.B2E.A2E/funfoldes/funfoldes_fold.xml -in:file:s srch6E5C02/naive/l44/connectivity/A1E.B1E.A3E.B3E.B4E.A4E.B2E.A2E/funfoldes/template_sketch.pdb -out:prefix srch6E5C02_naive_l44_${SLURM_ARRAY_TASK_ID}_funfol_ -out:file:silent srch6E5C02/naive/l44/connectivity/A1E.B1E.A3E.B3E.B4E.A4E.B2E.A2E/funfoldes/outputs/srch6E5C02_naive_l44_${SLURM_ARRAY_TASK_ID}_funfol.silent -nstruct 1 -overwrite -in:ignore_unrecognized_res -in:ignore_waters -out:file:silent_struct_type binary -out:mute protocols.abinitio protocols.moves core.optimization
srun /work/lpdi/users/hartevel/bin/Rosetta_03_2020/main/source/bin/rosetta_scripts.linuxiccrelease -parser:protocol srch6E5C02/naive/l44/connectivity/A1E.B1E.A3E.B3E.B4E.A4E.B2E.A2E/funfoldes/funfoldes_design.xml -in:file:silent srch6E5C02/naive/l44/connectivity/A1E.B1E.A3E.B3E.B4E.A4E.B2E.A2E/funfoldes/outputs/srch6E5C02_naive_l44_${SLURM_ARRAY_TASK_ID}_funfol.silent -out:prefix srch6E5C02_naive_l44_${SLURM_ARRAY_TASK_ID}_des_ -out:file:silent srch6E5C02/naive/l44/connectivity/A1E.B1E.A3E.B3E.B4E.A4E.B2E.A2E/funfoldes/outputs/srch6E5C02_naive_l44_${SLURM_ARRAY_TASK_ID}_des.silent -nstruct 10 -overwrite -in:ignore_unrecognized_res -in:ignore_waters -out:file:silent_struct_type binary -out:mute protocols.abinitio protocols.moves core.optimization
