#!/bin/bash
#SBATCH --nodes 1
#SBATCH --partition=serial
#SBATCH --ntasks-per-node 1
#SBATCH --cpus-per-task 1
#SBATCH --mem 4096
#SBATCH --time 10:00:00
#SBATCH --array=1-100
#SBATCH --output=/scratch/hartevel/logs/_output.%A..%a.out
#SBATCH --error=/scratch/hartevel/logs/_output.%A..%a.err

srun /work/lpdi/users/hartevel/bin/Rosetta_03_2020/main/source/bin/rosetta_scripts.linuxiccrelease -parser:protocol srch1QYS02/natlik/absuperfamily70250/corrections2XZ/mid/l13/lmaster/connectivity/A2E.A1E.B1H.A3E.B2H.A5E.A4E/funfoldes/funfoldes_fold.xml -in:file:s srch1QYS02/natlik/absuperfamily70250/corrections2XZ/mid/l13/lmaster/connectivity/A2E.A1E.B1H.A3E.B2H.A5E.A4E/funfoldes/template_sketch.pdb -out:prefix srch1QYS02_natlik_absuperfamily70250_corrections2XZ_mid_l13_lmaster_${SLURM_ARRAY_TASK_ID}_funfol_ -out:file:silent srch1QYS02/natlik/absuperfamily70250/corrections2XZ/mid/l13/lmaster/connectivity/A2E.A1E.B1H.A3E.B2H.A5E.A4E/funfoldes/outputs/srch1QYS02_natlik_absuperfamily70250_corrections2XZ_mid_l13_lmaster_${SLURM_ARRAY_TASK_ID}_funfol.silent -nstruct 1 -overwrite -in:ignore_unrecognized_res -in:ignore_waters -out:file:silent_struct_type binary -out:mute protocols.abinitio protocols.moves core.optimization
srun /work/lpdi/users/hartevel/bin/Rosetta_03_2020/main/source/bin/rosetta_scripts.linuxiccrelease -parser:protocol srch1QYS02/natlik/absuperfamily70250/corrections2XZ/mid/l13/lmaster/connectivity/A2E.A1E.B1H.A3E.B2H.A5E.A4E/funfoldes/funfoldes_design.xml -in:file:silent srch1QYS02/natlik/absuperfamily70250/corrections2XZ/mid/l13/lmaster/connectivity/A2E.A1E.B1H.A3E.B2H.A5E.A4E/funfoldes/outputs/srch1QYS02_natlik_absuperfamily70250_corrections2XZ_mid_l13_lmaster_${SLURM_ARRAY_TASK_ID}_funfol.silent -out:prefix srch1QYS02_natlik_absuperfamily70250_corrections2XZ_mid_l13_lmaster_${SLURM_ARRAY_TASK_ID}_des_ -out:file:silent srch1QYS02/natlik/absuperfamily70250/corrections2XZ/mid/l13/lmaster/connectivity/A2E.A1E.B1H.A3E.B2H.A5E.A4E/funfoldes/outputs/srch1QYS02_natlik_absuperfamily70250_corrections2XZ_mid_l13_lmaster_${SLURM_ARRAY_TASK_ID}_des.silent -nstruct 10 -overwrite -in:ignore_unrecognized_res -in:ignore_waters -out:file:silent_struct_type binary -out:mute protocols.abinitio protocols.moves core.optimization
