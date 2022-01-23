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



mkdir -p srch6E5C02/natlik/betasandwich70120/l55/corrections1X/mid/lmaster/connectivity/A1E.B1E.A3E.B3E.B4E.A4E.B2E.A2E/statistic/funfoldes_folding/_pdb_files/${SLURM_ARRAY_TASK_ID}
srun /work/lpdi/users/hartevel/bin/Rosetta_03_2020/main/source/build/src/release/linux/3.10/64/x86/icc/18.0/default/extract_pdbs.default.linuxiccrelease -in:file:silent srch6E5C02/natlik/betasandwich70120/l55/corrections1X/mid/lmaster/connectivity/A1E.B1E.A3E.B3E.B4E.A4E.B2E.A2E/funfoldes/outputs/srch6E5C02_natlik_betasandwich70120_l55_corrections1X_mid_lmaster_${SLURM_ARRAY_TASK_ID}_funfol.silent -out:prefix srch6E5C02/natlik/betasandwich70120/l55/corrections1X/mid/lmaster/connectivity/A1E.B1E.A3E.B3E.B4E.A4E.B2E.A2E/statistic/funfoldes_folding/_pdb_files/${SLURM_ARRAY_TASK_ID}/
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/statistics/geometry.py -case srch6E5C02/natlik/betasandwich70120/l55/corrections1X/mid/lmaster/connectivity/A1E.B1E.A3E.B3E.B4E.A4E.B2E.A2E/statistic/funfoldes_folding/current_case.yml -indir srch6E5C02/natlik/betasandwich70120/l55/corrections1X/mid/lmaster/connectivity/A1E.B1E.A3E.B3E.B4E.A4E.B2E.A2E/statistic/funfoldes_folding/_pdb_files/${SLURM_ARRAY_TASK_ID} -out srch6E5C02/natlik/betasandwich70120/l55/corrections1X/mid/lmaster/connectivity/A1E.B1E.A3E.B3E.B4E.A4E.B2E.A2E/statistic/funfoldes_folding/_geometry.${SLURM_ARRAY_TASK_ID}.csv
