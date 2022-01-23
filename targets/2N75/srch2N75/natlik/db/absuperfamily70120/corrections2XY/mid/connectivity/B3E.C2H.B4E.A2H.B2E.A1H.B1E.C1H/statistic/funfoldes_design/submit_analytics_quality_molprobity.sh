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



/work/lpdi/users/hartevel/bin/molprobity/cmdline/oneline-analysis srch2N75/natlik/db/absuperfamily70120/corrections2XY/mid/connectivity/B3E.C2H.B4E.A2H.B2E.A1H.B1E.C1H/statistic/funfoldes_design/_pdb_files/${SLURM_ARRAY_TASK_ID} > srch2N75/natlik/db/absuperfamily70120/corrections2XY/mid/connectivity/B3E.C2H.B4E.A2H.B2E.A1H.B1E.C1H/statistic/funfoldes_design/_molprobity.${SLURM_ARRAY_TASK_ID}.txt
