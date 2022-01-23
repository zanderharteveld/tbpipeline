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



python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/statistics/calc_proq4.py -p ${SLURM_ARRAY_TASK_ID} -f srch2N75/natlik/db/rmlike70120/corrections3XYZ/mid/connectivity/B3E.C2H.B4E.A2H.B2E.A1H.B1E.C1H/statistic/funfoldes_design/_pdb_files/${SLURM_ARRAY_TASK_ID} -o srch2N75/natlik/db/rmlike70120/corrections3XYZ/mid/connectivity/B3E.C2H.B4E.A2H.B2E.A1H.B1E.C1H/statistic/funfoldes_design
