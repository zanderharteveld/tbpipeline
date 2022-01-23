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

srun /work/lpdi/users/hartevel/bin/Rosetta_03_2020/main/source/bin/rosetta_scripts.linuxiccrelease -parser:protocol srch1PGX/naive/connectivity/A3E.A4E.B1H.A1E.A2E/funfoldes/funfoldes_fold.xml -in:file:s srch1PGX/naive/connectivity/A3E.A4E.B1H.A1E.A2E/funfoldes/template_sketch.pdb -out:prefix srch1PGX_naive_${SLURM_ARRAY_TASK_ID}_funfol_ -out:file:silent srch1PGX/naive/connectivity/A3E.A4E.B1H.A1E.A2E/funfoldes/outputs/srch1PGX_naive_${SLURM_ARRAY_TASK_ID}_funfol.silent -constraints:cst_weight 1.0 -abinitio:stage1_patch srch1PGX/naive/connectivity/A3E.A4E.B1H.A1E.A2E/funfoldes/score0.wts_patch -abinitio:stage2_patch srch1PGX/naive/connectivity/A3E.A4E.B1H.A1E.A2E/funfoldes/score1.wts_patch -abinitio:stage3a_patch srch1PGX/naive/connectivity/A3E.A4E.B1H.A1E.A2E/funfoldes/score2.wts_patch -abinitio:stage3b_patch srch1PGX/naive/connectivity/A3E.A4E.B1H.A1E.A2E/funfoldes/score5.wts_patch -abinitio:stage4_patch srch1PGX/naive/connectivity/A3E.A4E.B1H.A1E.A2E/funfoldes/score3.wts_patch -abinitio:stage5_patch srch1PGX/naive/connectivity/A3E.A4E.B1H.A1E.A2E/funfoldes/score3.wts_patch -nstruct 1 -overwrite -in:ignore_unrecognized_res -in:ignore_waters -out:file:silent_struct_type binary -out:mute protocols.abinitio protocols.moves core.optimization
srun /work/lpdi/users/hartevel/bin/Rosetta_03_2020/main/source/bin/rosetta_scripts.linuxiccrelease -parser:protocol srch1PGX/naive/connectivity/A3E.A4E.B1H.A1E.A2E/funfoldes/funfoldes_design.xml -in:file:silent srch1PGX/naive/connectivity/A3E.A4E.B1H.A1E.A2E/funfoldes/outputs/srch1PGX_naive_${SLURM_ARRAY_TASK_ID}_funfol.silent -out:prefix srch1PGX_naive_${SLURM_ARRAY_TASK_ID}_des_ -out:file:silent srch1PGX/naive/connectivity/A3E.A4E.B1H.A1E.A2E/funfoldes/outputs/srch1PGX_naive_${SLURM_ARRAY_TASK_ID}_des.silent -nstruct 5 -overwrite -in:ignore_unrecognized_res -in:ignore_waters -out:file:silent_struct_type binary -out:mute protocols.abinitio protocols.moves core.optimization
