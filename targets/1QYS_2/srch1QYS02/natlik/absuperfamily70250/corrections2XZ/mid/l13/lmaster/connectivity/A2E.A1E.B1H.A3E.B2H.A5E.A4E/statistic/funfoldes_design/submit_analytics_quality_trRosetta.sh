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



source /work/lpdi/users/hartevel/venv/py3rosetta/bin/activate 
bash srch1QYS02/natlik/absuperfamily70250/corrections2XZ/mid/l13/lmaster/connectivity/A2E.A1E.B1H.A3E.B2H.A5E.A4E/statistic/funfoldes_design/exec_trRosetta_predict.sh ${SLURM_ARRAY_TASK_ID} 
bash srch1QYS02/natlik/absuperfamily70250/corrections2XZ/mid/l13/lmaster/connectivity/A2E.A1E.B1H.A3E.B2H.A5E.A4E/statistic/funfoldes_design/exec_trRosetta_relax.sh ${SLURM_ARRAY_TASK_ID} 
bash srch1QYS02/natlik/absuperfamily70250/corrections2XZ/mid/l13/lmaster/connectivity/A2E.A1E.B1H.A3E.B2H.A5E.A4E/statistic/funfoldes_design/exec_trRosetta_TMalign.sh ${SLURM_ARRAY_TASK_ID}
