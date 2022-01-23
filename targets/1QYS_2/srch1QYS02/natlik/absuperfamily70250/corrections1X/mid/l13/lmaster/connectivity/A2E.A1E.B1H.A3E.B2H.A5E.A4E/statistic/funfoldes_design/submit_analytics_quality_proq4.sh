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



python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/statistics/calc_proq4.py -p ${SLURM_ARRAY_TASK_ID} -f srch1QYS02/natlik/absuperfamily70250/corrections1X/mid/l13/lmaster/connectivity/A2E.A1E.B1H.A3E.B2H.A5E.A4E/statistic/funfoldes_design/_pdb_files/${SLURM_ARRAY_TASK_ID} -o srch1QYS02/natlik/absuperfamily70250/corrections1X/mid/l13/lmaster/connectivity/A2E.A1E.B1H.A3E.B2H.A5E.A4E/statistic/funfoldes_design
