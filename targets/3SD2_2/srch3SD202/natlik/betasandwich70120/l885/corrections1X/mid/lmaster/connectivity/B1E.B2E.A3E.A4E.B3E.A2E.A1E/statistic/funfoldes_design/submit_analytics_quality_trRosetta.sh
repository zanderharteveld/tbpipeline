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



source /work/lpdi/users/hartevel/venv/py3rosetta/bin/activate 
bash srch3SD202/natlik/betasandwich70120/l885/corrections1X/mid/lmaster/connectivity/B1E.B2E.A3E.A4E.B3E.A2E.A1E/statistic/funfoldes_design/exec_trRosetta_predict.sh ${SLURM_ARRAY_TASK_ID} 
bash srch3SD202/natlik/betasandwich70120/l885/corrections1X/mid/lmaster/connectivity/B1E.B2E.A3E.A4E.B3E.A2E.A1E/statistic/funfoldes_design/exec_trRosetta_relax.sh ${SLURM_ARRAY_TASK_ID} 
bash srch3SD202/natlik/betasandwich70120/l885/corrections1X/mid/lmaster/connectivity/B1E.B2E.A3E.A4E.B3E.A2E.A1E/statistic/funfoldes_design/exec_trRosetta_TMalign.sh ${SLURM_ARRAY_TASK_ID}
