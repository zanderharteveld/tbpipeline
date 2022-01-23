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



/work/lpdi/users/hartevel/bin/molprobity/cmdline/oneline-analysis srch3SD202/natlik/betasandwich70120/l885/corrections4XYZZ/mid/lmaster/connectivity/B1E.B2E.A3E.A4E.B3E.A2E.A1E/statistic/funfoldes_design/_pdb_files/${SLURM_ARRAY_TASK_ID} > srch3SD202/natlik/betasandwich70120/l885/corrections4XYZZ/mid/lmaster/connectivity/B1E.B2E.A3E.A4E.B3E.A2E.A1E/statistic/funfoldes_design/_molprobity.${SLURM_ARRAY_TASK_ID}.txt
