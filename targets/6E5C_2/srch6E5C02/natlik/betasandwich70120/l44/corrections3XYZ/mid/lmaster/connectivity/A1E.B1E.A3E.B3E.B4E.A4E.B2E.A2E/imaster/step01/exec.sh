#!/bin/bash

SLURM_ARRAY_TASK_ID=$1

if (( ${SLURM_ARRAY_TASK_ID} == 1 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/a0/3a0j_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3a0j_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/aa/3aab_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3aab_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 2 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ae/1ae2_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1ae2_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ah/1ahs_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1ahs_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 3 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/an/2ane_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2ane_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/b1/2b1y_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2b1y_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 4 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/b2/1b2p_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1b2p_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/b2/2b29_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2b29_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 5 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/b8/2b8m_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2b8m_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/bb/3bb6_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3bb6_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 6 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/bd/1bdo_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1bdo_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/bi/1bii_B.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1bii_B.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 7 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/bo/3bov_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3bov_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/bt/1btn_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1btn_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 8 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/bv/1bvn_T.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1bvn_T.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/c5/1c5e_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1c5e_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 9 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/c7/3c75_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3c75_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/cb/2cbp_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2cbp_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 10 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/cc/2ccv_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2ccv_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/cd/1cdc_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1cdc_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 11 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/cd/4cdd_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4cdd_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/cr/3crk_C.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3crk_C.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 12 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/cx/2cxk_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2cxk_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/d9/2d9r_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2d9r_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 13 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/da/1dan_U.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1dan_U.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/da/4dam_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4dam_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 14 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/dd/1ddw_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1ddw_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/df/1dfu_P.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1dfu_P.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 15 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/dj/3dj9_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3dj9_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/dl/2dlb_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2dlb_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 16 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/dp/2dpf_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2dpf_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/dy/1dyn_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1dyn_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 17 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/e3/2e3v_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2e3v_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/e4/1e44_B.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1e44_B.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 18 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/e7/1e7n_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1e7n_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/e7/2e7d_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2e7d_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 19 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ea/1ean_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1ean_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ea/1eaz_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1eaz_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 20 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ea/3ead_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3ead_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ec/3ecy_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3ecy_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 21 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ee/3ee7_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3ee7_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ei/3eiv_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3eiv_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 22 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ej/1ejf_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1ejf_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/er/3ers_X.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3ers_X.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 23 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ey/2ey4_C.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2ey4_C.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ez/1ezg_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1ezg_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 24 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/f3/1f3u_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1f3u_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/f5/1f56_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1f56_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 25 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/f7/1f7d_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1f7d_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/fa/1fao_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1fao_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 26 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/fd/4fd9_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4fd9_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/fh/1fhg_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1fhg_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 27 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/fi/2fiv_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2fiv_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/fm/3fm8_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3fm8_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 28 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ft/3ft1_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3ft1_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/fu/2fu5_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2fu5_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 29 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/fw/1fwa_B.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1fwa_B.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/fz/2fz6_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2fz6_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 30 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/g1/1g1c_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1g1c_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/gd/4gd9_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4gd9_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 31 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/gi/2gim_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2gim_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/gi/3gin_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3gin_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 32 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/gl/1gl4_B.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1gl4_B.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/gm/2gmq_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2gmq_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 33 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/go/4gos_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4gos_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/gq/3gqs_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3gqs_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 34 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/h1/1h10_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1h10_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/h8/1h8g_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1h8g_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 35 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ha/2haz_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2haz_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/hd/1hdf_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1hdf_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 36 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/he/1he7_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1he7_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/hh/4hhv_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4hhv_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 37 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/hk/1hkf_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1hkf_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/hn/2hnu_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2hnu_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 38 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/hq/3hqx_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3hqx_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/hr/4hr7_B.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4hr7_B.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 39 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/hv/2hvy_B.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2hvy_B.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ib/1iby_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1iby_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 40 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ic/2ic2_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2ic2_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/id/1id2_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1id2_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 41 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ik/1ikn_C.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1ikn_C.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/im/1im3_D.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1im3_D.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 42 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/io/4ios_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4ios_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/iu/1iu1_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1iu1_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 43 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ix/1ix2_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1ix2_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/j0/1j0w_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1j0w_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 44 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/j1/2j12_B.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2j12_B.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/j5/2j59_M.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2j59_M.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 45 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/j8/2j8i_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2j8i_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/je/1jer_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1jer_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 46 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ji/1jiw_I.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1jiw_I.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/jn/1jnp_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1jnp_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 47 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/jp/1jpe_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1jpe_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/jq/3jqw_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3jqw_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 48 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/js/1jsg_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1jsg_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/jt/3jt0_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3jt0_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 49 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/jv/4jvu_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4jvu_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/jv/4jvw_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4jvw_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 50 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/k5/1k5j_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1k5j_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/kc/3kcw_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3kcw_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 51 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/kh/3khq_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3khq_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/km/3kma_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3kma_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 52 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/kt/3kt9_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3kt9_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/kw/3kwt_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3kwt_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 53 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/l0/1l0s_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1l0s_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/l6/4l63_B.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4l63_B.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 54 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ld/4ldm_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4ldm_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/lg/1lgp_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1lgp_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 55 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/lg/3lgj_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3lgj_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/lk/1lkt_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1lkt_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 56 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ll/4lld_B.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4lld_B.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/lu/1luz_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1luz_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 57 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/m1/1m1s_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1m1s_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/m8/1m8n_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1m8n_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 58 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ma/1mai_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1mai_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/n0/1n0l_B.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1n0l_B.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 59 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/n5/4n5u_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4n5u_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/n8/4n8f_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4n8f_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 60 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/n8/4n8m_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4n8m_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/nc/1nc7_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1nc7_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 61 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/nc/1ncg_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1ncg_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/nc/3ncu_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3ncu_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 62 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ne/1neu_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1neu_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/nj/1njh_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1njh_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 63 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/nm/2nms_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2nms_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/nn/1nnx_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1nnx_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 64 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/no/4nob_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4nob_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/nq/1nqd_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1nqd_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 65 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/nq/2nqc_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2nqc_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ny/1nyc_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1nyc_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 66 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/o4/1o4t_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1o4t_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/o5/1o5u_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1o5u_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 67 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/o6/1o6a_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1o6a_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/o7/1o7i_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1o7i_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 68 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/o9/1o9y_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1o9y_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/or/2or8_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2or8_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 69 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/os/1osy_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1osy_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ou/3oug_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3oug_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 70 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ox/2ox5_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2ox5_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/oy/2oyz_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2oyz_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 71 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/oz/2ozj_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2ozj_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/p5/1p5t_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1p5t_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 72 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/p9/2p9r_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2p9r_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/pg/3pgz_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3pgz_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 73 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/pi/2pi2_E.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2pi2_E.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/pk/1pkv_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1pkv_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 74 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/pm/1pm4_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1pm4_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/po/3po8_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3po8_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 75 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/pp/1ppy_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1ppy_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/pt/1pt0_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1pt0_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 76 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/q2/2q2h_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2q2h_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/q8/2q87_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2q87_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 77 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/qb/1qb5_D.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1qb5_D.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/qc/1qc6_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1qc6_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 78 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/qc/4qcj_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4qcj_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/qo/3qor_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3qor_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 79 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/qp/3qp3_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3qp3_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/r4/1r4p_B.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1r4p_B.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 80 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/r7/1r75_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1r75_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/r9/1r94_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1r94_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 81 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/rc/3rcp_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3rcp_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/rg/3rgh_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3rgh_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 82 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/rj/1rjl_C.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1rjl_C.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/rm/1rm1_B.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1rm1_B.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 83 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/s3/3s3z_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3s3z_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/s9/1s98_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1s98_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 84 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/sm/1smo_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1smo_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/sm/1smx_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1smx_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 85 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/sn/3sny_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3sny_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/sp/1spp_B.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1spp_B.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 86 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/sq/3sqf_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3sqf_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/sy/3syx_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3syx_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 87 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/t3/3t30_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3t30_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/td/1td3_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1td3_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 88 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ts/1ts9_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1ts9_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/tu/1tul_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1tul_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 89 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/u5/1u5d_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1u5d_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/u5/1u5f_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1u5f_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 90 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/u5/1u5g_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1u5g_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ua/1uad_C.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1uad_C.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 91 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ub/1ub4_C.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1ub4_C.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ul/3ulj_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3ulj_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 92 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/um/1umu_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1umu_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/uz/3uze_C.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3uze_C.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 93 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/v1/1v1i_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1v1i_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/v1/1v1q_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1v1q_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 94 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/v3/2v33_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2v33_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/v6/2v6h_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2v6h_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 95 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/v7/1v70_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1v70_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/v7/1v76_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1v76_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 96 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/v7/2v76_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2v76_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/v8/1v8h_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1v8h_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 97 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/vn/2vnv_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2vnv_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/vw/2vw9_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2vw9_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 98 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/w0/1w0n_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1w0n_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/wa/1waa_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1waa_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 99 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/wj/1wjx_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1wjx_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ws/1ws7_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1ws7_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 100 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ww/1wwa_X.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1wwa_X.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ww/1wwc_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1wwc_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 101 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/x0/1x0g_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1x0g_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/x9/1x9r_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1x9r_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 102 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/xa/1xau_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1xau_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/xc/2xcm_C.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2xcm_C.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 103 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/xe/1xe1_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1xe1_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/xe/1xed_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1xed_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 104 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/xi/1xiw_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1xiw_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/xt/2xt9_B.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2xt9_B.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 105 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/y8/1y8n_B.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1y8n_B.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/yf/1yfn_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1yfn_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 106 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/yh/1yhf_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1yhf_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/z0/1z0m_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1z0m_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 107 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/z0/2z0t_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2z0t_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/z1/2z1c_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2z1c_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 108 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/z9/1z9f_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1z9f_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/zc/1zc4_B.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1zc4_B.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 109 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/zc/2zcz_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2zcz_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ze/1ze3_D.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1ze3_D.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A1E.A3E.A4E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi