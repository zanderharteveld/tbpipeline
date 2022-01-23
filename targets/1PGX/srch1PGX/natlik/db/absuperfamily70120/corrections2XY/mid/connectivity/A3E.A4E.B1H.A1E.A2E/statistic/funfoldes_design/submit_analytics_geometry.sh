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



mkdir -p srch1PGX/natlik/db/absuperfamily70120/corrections2XY/mid/connectivity/A3E.A4E.B1H.A1E.A2E/statistic/funfoldes_design/_pdb_files/${SLURM_ARRAY_TASK_ID}
srun /work/lpdi/users/hartevel/bin/Rosetta_03_2020/main/source/build/src/release/linux/3.10/64/x86/icc/18.0/default/extract_pdbs.default.linuxiccrelease -in:file:silent srch1PGX/natlik/db/absuperfamily70120/corrections2XY/mid/connectivity/A3E.A4E.B1H.A1E.A2E/funfoldes/outputs/srch1PGX_natlik_db_absuperfamily70120_corrections2XY_mid_${SLURM_ARRAY_TASK_ID}_des.silent -out:prefix srch1PGX/natlik/db/absuperfamily70120/corrections2XY/mid/connectivity/A3E.A4E.B1H.A1E.A2E/statistic/funfoldes_design/_pdb_files/${SLURM_ARRAY_TASK_ID}/
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/statistics/geometry.py -case srch1PGX/natlik/db/absuperfamily70120/corrections2XY/mid/connectivity/A3E.A4E.B1H.A1E.A2E/statistic/funfoldes_design/current_case.yml -indir srch1PGX/natlik/db/absuperfamily70120/corrections2XY/mid/connectivity/A3E.A4E.B1H.A1E.A2E/statistic/funfoldes_design/_pdb_files/${SLURM_ARRAY_TASK_ID} -out srch1PGX/natlik/db/absuperfamily70120/corrections2XY/mid/connectivity/A3E.A4E.B1H.A1E.A2E/statistic/funfoldes_design/_geometry.${SLURM_ARRAY_TASK_ID}.csv
