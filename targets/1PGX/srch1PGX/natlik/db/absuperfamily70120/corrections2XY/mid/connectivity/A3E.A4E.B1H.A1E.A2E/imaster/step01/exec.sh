#!/bin/bash

SLURM_ARRAY_TASK_ID=$1

if (( ${SLURM_ARRAY_TASK_ID} == 1 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/a1/2a10_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2a10_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/a2/4a20_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4a20_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/a6/1a6f_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1a6f_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 2 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/a6/2a6q_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2a6q_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/a6/2a6q_E.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2a6q_E.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/a8/4a8x_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4a8x_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 3 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/aa/1aaz_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1aaz_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ad/3adl_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3adl_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ag/4agh_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4agh_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 4 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ai/2aif_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2aif_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/aj/2aj6_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2aj6_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ao/3ao9_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3ao9_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 5 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ap/2ap6_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2ap6_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ar/2ar5_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2ar5_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/au/2aug_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2aug_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 6 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/aw/4awj_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4awj_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/b2/4b2b_B.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4b2b_B.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/b4/1b4b_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1b4b_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 7 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/b4/2b4a_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2b4a_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/b5/4b5c_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4b5c_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/b7/3b7x_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3b7x_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 8 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/b8/4b8n_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4b8n_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/bb/2bbe_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2bbe_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/bg/3bgo_P.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3bgo_P.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 9 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/bj/2bjd_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2bjd_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/bk/2bkf_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2bkf_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/bk/3bkr_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3bkr_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 10 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/bk/4bkg_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4bkg_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/bm/1bm8_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1bm8_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/bn/3bn0_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3bn0_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 11 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/bp/3bp3_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3bp3_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/bu/1buh_B.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1buh_B.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/bv/1bv4_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1bv4_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 12 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/bx/1bxe_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1bxe_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/by/1by2_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1by2_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/by/3byp_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3byp_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 13 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/bz/3bzp_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3bzp_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/c5/2c5l_C.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2c5l_C.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/c6/2c60_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2c60_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 14 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/c9/2c9w_C.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2c9w_C.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/cc/1cc7_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1cc7_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ce/3ced_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3ced_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 15 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/cf/3cfi_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3cfi_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ci/3ci0_I.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3ci0_I.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/cj/2cjr_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2cjr_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 16 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/cj/3cjk_B.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3cjk_B.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/cj/3cjs_B.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3cjs_B.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/cr/4crh_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4crh_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 17 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ct/3ctf_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3ctf_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/cx/1cxy_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1cxy_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/cx/2cx6_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2cx6_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 18 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/cy/1cyo_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1cyo_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/cy/2cyj_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2cyj_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/cz/1czp_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1czp_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 19 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/cz/2cz4_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2cz4_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/cz/2czv_C.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2czv_C.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/d0/2d00_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2d00_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 20 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/d0/2d0o_B.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2d0o_B.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/d1/2d1p_B.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2d1p_B.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/d2/3d21_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3d21_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 21 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/d2/3d2w_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3d2w_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/db/2dbs_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2dbs_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/dc/2dcl_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2dcl_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 22 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/de/3ded_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3ded_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/df/3dfe_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3dfe_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/dh/3dhh_E.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3dhh_E.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 23 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/dh/3dhx_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3dhx_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/dj/2dj6_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2dj6_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/dl/3dlu_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3dlu_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 24 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/dm/1dm9_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1dm9_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/dm/2dm9_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2dm9_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/dn/3dnj_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3dnj_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 25 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/do/1dok_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1dok_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/dp/1dp6_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1dp6_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/dr/3drz_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3drz_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 26 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ds/2dsy_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2dsy_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/dt/1dtj_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1dtj_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/dx/2dx0_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2dx0_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 27 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/dy/2dyj_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2dyj_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/e1/3e11_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3e11_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/e4/1e44_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1e44_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 28 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ea/2ea9_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2ea9_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/eb/2ebb_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2ebb_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ec/1ec6_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1ec6_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 29 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ec/1ecs_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1ecs_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ee/4eeu_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4eeu_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/eg/3egn_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3egn_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 30 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/eg/4egu_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4egu_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ej/2ejq_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2ejq_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ek/2eky_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2eky_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 31 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/em/1em8_B.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1em8_B.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/em/4emn_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4emn_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/eo/3eod_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3eod_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 32 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/er/3er7_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3er7_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/er/3erj_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3erj_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ew/2ewc_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2ewc_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 33 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ew/2ewh_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2ewh_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ex/3exc_X.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3exc_X.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ey/4eyc_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4eyc_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 34 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/f1/3f1n_B.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3f1n_B.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/f2/4f25_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4f25_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/f3/1f37_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1f37_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 35 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/f4/2f41_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2f41_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/f4/3f42_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3f42_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/f5/2f51_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2f51_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 36 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/f6/1f60_B.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1f60_B.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/f9/1f9p_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1f9p_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/f9/2f9d_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2f9d_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 37 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/fa/3fau_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3fau_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/fc/3fcd_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3fcd_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/fd/2fdo_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2fdo_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 38 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ff/2ffg_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2ffg_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ff/2ffm_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2ffm_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/fg/2fgg_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2fgg_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 39 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/fh/2fhz_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2fhz_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/fi/2fi9_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2fi9_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/fi/2fiu_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2fiu_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 40 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/fm/1fm0_D.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1fm0_D.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/fm/1fm5_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1fm5_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/fm/3fmb_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3fmb_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 41 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/fn/3fna_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3fna_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/fo/2fo3_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2fo3_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ft/2ftr_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2ftr_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 42 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ft/2ftx_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2ftx_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/fu/2fuj_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2fuj_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/fu/4fur_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4fur_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 43 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/fv/2fvh_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2fvh_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/fw/3fwt_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3fwt_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/fx/4fxv_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4fxv_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 44 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/fz/3fz4_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3fz4_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/g0/2g0i_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2g0i_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/g2/1g2r_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1g2r_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 45 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/g2/3g20_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3g20_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ge/2ge8_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2ge8_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/gf/2gff_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2gff_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 46 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/gi/2gib_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2gib_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/gj/2gj3_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2gj3_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/gj/3gjn_B.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3gjn_B.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 47 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/gm/1gmx_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1gmx_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/gn/3gnj_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3gnj_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/go/1gou_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1gou_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 48 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/go/2go8_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2go8_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/gp/2gpi_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2gpi_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/gr/2gr7_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2gr7_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 49 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/gr/2gr8_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2gr8_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/gs/3gsd_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3gsd_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/gt/1gtd_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1gtd_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 50 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/gt/2gtc_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2gtc_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/gu/1gua_B.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1gua_B.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/gu/2guk_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2guk_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 51 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/gv/4gvb_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4gvb_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/gx/1gxt_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1gxt_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/gy/1gyj_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1gyj_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 52 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/h0/1h0x_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1h0x_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/h4/1h4x_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1h4x_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/h6/1h6k_X.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1h6k_X.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 53 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/h6/3h6n_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3h6n_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/h7/1h75_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1h75_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/h7/3h79_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3h79_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 54 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/h8/1h8u_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1h8u_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/h9/1h98_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1h98_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/h9/2h9u_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2h9u_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 55 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ha/3haf_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3haf_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ha/4has_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4has_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/hd/3hds_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3hds_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 56 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/hj/2hj1_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2hj1_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/hl/1hl6_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1hl6_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/hl/4hls_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4hls_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 57 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/hq/2hqs_C.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2hqs_C.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/hq/4hqa_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4hqa_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/hs/4hs1_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4hs1_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 58 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ht/2ht9_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2ht9_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/hw/2hw4_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2hw4_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/hw/4hwx_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4hwx_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 59 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/hx/3hx9_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3hx9_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/hx/3hxs_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3hxs_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/hy/2hy5_C.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2hy5_C.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 60 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/hy/2hyi_B.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2hyi_B.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/hz/1hz5_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1hz5_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/hz/2hz5_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2hz5_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 61 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/hz/2hzc_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2hzc_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/hz/3hz4_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3hz4_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/i3/1i3j_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1i3j_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 62 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/i5/2i52_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2i52_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/i5/2i5r_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2i5r_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/i7/2i7r_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2i7r_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 63 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/i7/3i7t_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3i7t_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/i8/2i8e_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2i8e_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/i9/2i9x_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2i9x_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 64 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/i9/2i9z_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2i9z_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ia/2ia7_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2ia7_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ia/2iay_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2iay_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 65 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ic/4icu_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4icu_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/id/2idl_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2idl_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ie/2iec_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2iec_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 66 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/if/2ifx_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2ifx_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ih/1ihr_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1ihr_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ih/3ihs_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3ihs_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 67 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ii/1iib_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1iib_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ii/2iii_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2iii_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ik/1ikt_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1ikt_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 68 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ik/4ikg_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4ikg_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/im/3ima_B.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3ima_B.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/in/2inw_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2inw_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 69 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/in/4inc_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4inc_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/io/2io1_B.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2io1_B.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/io/2ioj_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2ioj_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 70 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/iq/1iqz_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1iqz_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/it/2it9_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2it9_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/it/4itk_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4itk_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 71 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/iu/1iu9_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1iu9_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/iu/1iuj_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1iuj_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/iy/2iyg_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2iyg_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 72 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/iy/2iyj_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2iyj_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/j1/1j1y_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1j1y_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/j2/1j27_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1j27_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 73 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/j5/2j5a_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2j5a_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/j6/2j6b_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2j6b_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/j8/1j8b_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1j8b_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 74 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/j8/2j85_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2j85_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/j9/2j9c_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2j9c_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/jf/4jfn_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4jfn_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 75 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/jg/4jgx_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4jgx_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ji/1jid_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1jid_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/jj/1jjh_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1jjh_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 76 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/jl/2jlh_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2jlh_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/jl/2jli_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2jli_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/jm/1jmt_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1jmt_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 77 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/jo/1jos_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1jos_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/jy/1jyo_E.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1jyo_E.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/k3/1k3s_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1k3s_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 78 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ka/1kaf_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1kaf_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/kc/1kcq_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1kcq_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/kh/3kh0_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3kh0_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 79 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/kp/1kpt_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1kpt_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ku/4kun_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4kun_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/kv/3kvt_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3kvt_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 80 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/kz/3kz7_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3kz7_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/l0/3l0r_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3l0r_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/l1/1l1s_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1l1s_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 81 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/l4/1l4d_B.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1l4d_B.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/l4/3l4n_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3l4n_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/l4/3l4q_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3l4q_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 82 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/l5/1l5p_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1l5p_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/la/3lae_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3lae_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/lb/4lbh_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4lbh_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 83 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/le/3le5_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3le5_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/lf/1lfd_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1lfd_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/lf/3lf5_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3lf5_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 84 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/li/4lij_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4lij_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ll/3llb_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3llb_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/lm/1lm8_B.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1lm8_B.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 85 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/lm/4lms_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4lms_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ln/1ln0_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1ln0_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ln/1ln4_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1ln4_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 86 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ln/3lno_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3lno_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/lo/3lo3_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3lo3_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/lq/1lq9_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1lq9_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 87 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/lt/4ltt_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4ltt_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/lu/3luu_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3luu_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/lv/3lvj_C.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3lvj_C.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 88 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/lx/1lxd_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1lxd_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/lx/1lxj_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1lxj_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/m5/3m5b_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3m5b_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 89 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ma/4mac_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4mac_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/mb/1mb1_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1mb1_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/mb/1mby_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1mby_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 90 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/mg/1mg4_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1mg4_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/mg/1mgr_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1mgr_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/mj/1mj4_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1mj4_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 91 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/mn/1mnm_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1mnm_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/mw/1mwp_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1mwp_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/mw/1mwq_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1mwq_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 92 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/mw/1mww_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1mww_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/mz/1mzu_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1mzu_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/n1/3n1s_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3n1s_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 93 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/n6/1n6j_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1n6j_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/n9/3n9u_C.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3n9u_C.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/nb/1nbw_B.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1nbw_B.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 94 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ng/3ngk_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3ngk_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/nn/1nn7_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1nn7_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/nn/2nn2_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2nn2_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 95 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/nn/4nnr_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4nnr_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/no/1no5_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1no5_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/np/2npt_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2npt_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 96 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/np/2npt_B.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2npt_B.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/nu/2nuh_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2nuh_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/nv/2nvm_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2nvm_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 97 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ny/2nyh_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2nyh_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ny/3ny5_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3ny5_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/nz/1nz0_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1nz0_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 98 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/nz/2nzc_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2nzc_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/o0/2o0p_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2o0p_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/o1/1o13_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1o13_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 99 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/o1/3o1k_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3o1k_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/o2/2o2v_B.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2o2v_B.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/o5/1o51_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1o51_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 100 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/o5/1o5e_L.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1o5e_L.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/o6/2o66_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2o66_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/o9/2o9u_X.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2o9u_X.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 101 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/oa/2oai_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2oai_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/oa/3oa1_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3oa1_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/od/1odv_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1odv_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 102 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/od/2od0_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2od0_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/od/2od4_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2od4_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/od/2od6_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2od6_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 103 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/oe/1oey_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1oey_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/oe/1oey_J.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1oey_J.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/oe/3oei_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3oei_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 104 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/oe/3oei_C.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3oei_C.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/of/1ofu_X.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1ofu_X.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/oj/1oj5_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1oj5_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 105 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/oj/2ojl_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2ojl_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/om/1oms_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1oms_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/om/2omo_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2omo_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 106 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/oo/1oo0_B.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1oo0_B.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/oo/2oox_B.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2oox_B.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/oo/3oon_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3oon_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 107 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/op/2op5_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2op5_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/oq/1oqj_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1oqj_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/oq/3oq2_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3oq2_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 108 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/os/1osc_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1osc_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/os/3ose_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3ose_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ow/4ow1_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4ow1_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 109 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/oz/4ozj_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4ozj_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/p1/4p1m_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4p1m_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/p2/2p2r_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2p2r_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 110 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/p3/2p3h_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2p3h_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/p4/2p4p_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2p4p_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/p5/2p5m_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2p5m_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 111 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/p7/4p7v_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4p7v_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/pa/2pa2_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2pa2_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/pb/2pbc_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2pbc_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 112 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/pc/1pc4_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1pc4_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/pd/2pd1_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2pd1_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/pe/2peb_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2peb_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 113 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/pf/2pf5_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2pf5_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/pg/1pgx_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1pgx_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/pj/2pjs_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2pjs_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 114 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/pk/2pk8_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2pk8_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/pk/2pko_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2pko_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/pl/2pli_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2pli_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 115 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/pp/2ppi_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2ppi_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/py/1pyt_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1pyt_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/pz/1pz4_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1pz4_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 116 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/pz/3pz7_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3pz7_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/q2/4q2u_B.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4q2u_B.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/q4/1q4r_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1q4r_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 117 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/q5/1q5v_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1q5v_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/q7/2q79_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2q79_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/q8/1q8b_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1q8b_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 118 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/q8/1q8r_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1q8r_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/qg/1qgw_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1qgw_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ql/2qlw_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2qlw_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 119 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ql/2qlx_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2qlx_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/qm/2qms_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2qms_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/qn/2qn6_B.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2qn6_B.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 120 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/qn/3qn0_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3qn0_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/qq/3qq8_B.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3qq8_B.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/qv/3qvg_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3qvg_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 121 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/qv/3qvg_B.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3qvg_B.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/qw/1qw2_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1qw2_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/qy/2qyc_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2qyc_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 122 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/qz/1qzm_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1qzm_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/r2/2r2o_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2r2o_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/r2/2r2z_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2r2z_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 123 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/r2/3r27_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3r27_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/r4/2r48_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2r48_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/r5/1r5p_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1r5p_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 124 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/r5/1r5x_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1r5x_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/r5/2r5x_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2r5x_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/r6/1r6y_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1r6y_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 125 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/r7/1r7l_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1r7l_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/r8/1r8h_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1r8h_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/r9/1r9h_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1r9h_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 126 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/rd/3rdw_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3rdw_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/re/2ret_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2ret_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/re/2rex_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2rex_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 127 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/rh/2rhk_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2rhk_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/rh/3rhb_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3rhb_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/rk/1rki_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1rki_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 128 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/rk/2rk5_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2rk5_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/rk/2rk9_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2rk9_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/rp/1rpy_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1rpy_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 129 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/rs/2rsl_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2rsl_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/rt/1rtu_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1rtu_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/rw/1rw1_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1rw1_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 130 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/s1/1s12_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1s12_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/s1/1s1g_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1s1g_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/s6/1s66_L.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1s66_L.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 131 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/s7/1s72_O.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1s72_O.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/s7/1s72_X.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1s72_X.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/s7/3s7r_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3s7r_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 132 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/sa/1sau_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1sau_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/sc/1sce_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1sce_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/sf/1sf8_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1sf8_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 133 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/si/1si9_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1si9_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/sk/1sko_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1sko_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/sp/1spb_P.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1spb_P.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 134 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/sq/1sql_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1sql_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ss/3ssq_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3ssq_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/sv/1svy_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1svy_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 135 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/t0/1t07_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1t07_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/t0/1t0q_C.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1t0q_C.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/t1/1t1j_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1t1j_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 136 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/t3/1t3u_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1t3u_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/t4/1t4o_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1t4o_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/t5/3t50_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3t50_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 137 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/t5/3t5s_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3t5s_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/t6/1t6t_1.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1t6t_1.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/t7/3t7y_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3t7y_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 138 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/tb/1tbu_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1tbu_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/td/3td3_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3td3_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ti/1tid_B.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1tid_B.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 139 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ti/1tif_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1tif_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ti/1tig_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1tig_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/tr/3trg_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3trg_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 140 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ts/1tsj_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1tsj_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/tt/1ttz_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1ttz_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/tu/1tuw_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1tuw_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 141 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/tz/1tz0_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1tz0_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/u0/1u07_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1u07_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/u0/1u0s_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1u0s_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 142 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ue/3ue2_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3ue2_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ul/3ul5_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3ul5_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ul/3ulh_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3ulh_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 143 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/un/1unn_C.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1unn_C.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/up/3ups_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3ups_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ur/1urr_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1urr_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 144 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/us/1usm_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1usm_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/uv/1uv7_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1uv7_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/uw/1uw4_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1uw4_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 145 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/v3/1v30_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1v30_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/v3/1v3z_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1v3z_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/v5/1v5i_B.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1v5i_B.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 146 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/v7/1v74_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1v74_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/v8/2v8q_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2v8q_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/v8/2v8q_B.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2v8q_B.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 147 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/v9/1v9y_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1v9y_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/v9/2v94_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2v94_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/vc/1vc1_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1vc1_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 148 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/vc/1vcc_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1vcc_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/vf/3vfi_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3vfi_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/vj/1vjh_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1vjh_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 149 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/vj/1vjk_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1vjk_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/vk/1vk8_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1vk8_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/vk/3vke_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3vke_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 150 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/vm/1vm0_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1vm0_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/vm/1vmb_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1vmb_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/vq/1vq3_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1vq3_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 151 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/vq/1vqs_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1vqs_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/vr/1vr7_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1vr7_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/vy/1vyi_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1vyi_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 152 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/w1/3w1y_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3w1y_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/w9/2w9j_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2w9j_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/w9/2w9r_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2w9r_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 153 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/wc/2wci_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2wci_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/wf/2wfb_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2wfb_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/wh/1whz_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1whz_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 154 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/wk/2wkb_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2wkb_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/wm/1wmh_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1wmh_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/wm/1wmh_B.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1wmh_B.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 155 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/wm/1wmi_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1wmi_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/wo/1wou_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1wou_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/wv/1wv8_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1wv8_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 156 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/wv/1wvn_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1wvn_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/wx/1wx2_B.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1wx2_B.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/wz/1wz3_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1wz3_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 157 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/wz/1wz7_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1wz7_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/wz/2wz9_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2wz9_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/wz/2wzl_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2wzl_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 158 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/x1/2x1a_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2x1a_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/x7/1x7v_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1x7v_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/x9/2x9a_B.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2x9a_B.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 159 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/xe/1xer_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1xer_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/xg/1xg8_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1xg8_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/xh/1xho_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1xho_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 160 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/xk/1xkf_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1xkf_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/xm/1xmt_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1xmt_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/xp/1xpp_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1xpp_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 161 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/xq/1xqa_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1xqa_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/xq/1xqu_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1xqu_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/xt/1xte_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1xte_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 162 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/xt/1xtn_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1xtn_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/xw/1xw3_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1xw3_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/xy/1xy7_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1xy7_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 163 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/y0/1y0h_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1y0h_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/y0/1y0n_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1y0n_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/y2/1y2i_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1y2i_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 164 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/y3/2y3y_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2y3y_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/y8/1y81_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1y81_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/y8/1y8x_B.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1y8x_B.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 165 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/y8/2y8l_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2y8l_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/yb/1ybx_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1ybx_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/yd/1ydl_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1ydl_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 166 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/yl/1ylq_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1ylq_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/yl/1ylx_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1ylx_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/yo/1yo3_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1yo3_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 167 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/yp/2yps_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2yps_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/yq/1yqh_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1yqh_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/yy/2yy9_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2yy9_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 168 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/z1/1z1a_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1z1a_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/z1/2z15_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2z15_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/z3/1z3e_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1z3e_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 169 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/z6/2z6d_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2z6d_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/z9/1z9w_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1z9w_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/zd/2zdp_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2zdp_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 170 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/zf/2zfh_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2zfh_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/zf/2zfz_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2zfz_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi