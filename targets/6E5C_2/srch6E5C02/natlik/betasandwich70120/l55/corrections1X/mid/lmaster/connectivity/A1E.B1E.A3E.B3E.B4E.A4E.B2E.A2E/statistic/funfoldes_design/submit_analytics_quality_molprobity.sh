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



/work/lpdi/users/hartevel/bin/molprobity/cmdline/oneline-analysis srch6E5C02/natlik/betasandwich70120/l55/corrections1X/mid/lmaster/connectivity/A1E.B1E.A3E.B3E.B4E.A4E.B2E.A2E/statistic/funfoldes_design/_pdb_files/${SLURM_ARRAY_TASK_ID} > srch6E5C02/natlik/betasandwich70120/l55/corrections1X/mid/lmaster/connectivity/A1E.B1E.A3E.B3E.B4E.A4E.B2E.A2E/statistic/funfoldes_design/_molprobity.${SLURM_ARRAY_TASK_ID}.txt
