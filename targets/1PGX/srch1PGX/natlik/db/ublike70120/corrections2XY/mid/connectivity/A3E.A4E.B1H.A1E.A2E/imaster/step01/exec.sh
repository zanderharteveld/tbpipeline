#!/bin/bash

SLURM_ARRAY_TASK_ID=$1

if (( ${SLURM_ARRAY_TASK_ID} == 1 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/a2/4a20_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4a20_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 2 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/aw/4awj_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4awj_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 3 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/bk/2bkf_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2bkf_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 4 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/bk/4bkg_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4bkg_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 5 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/c5/2c5l_C.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2c5l_C.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 6 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/c6/2c60_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2c60_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 7 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/cz/1czp_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1czp_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 8 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/fm/1fm0_D.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1fm0_D.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 9 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/gu/1gua_B.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1gua_B.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 10 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/h6/3h6n_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3h6n_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 11 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/hj/2hj1_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2hj1_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 12 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/hz/1hz5_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1hz5_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 13 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ic/4icu_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4icu_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 14 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ii/2iii_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2iii_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 15 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ik/4ikg_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4ikg_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 16 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/io/2io1_B.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2io1_B.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 17 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/it/4itk_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4itk_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 18 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/kh/3kh0_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3kh0_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 19 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/l4/1l4d_B.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1l4d_B.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 20 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/l5/1l5p_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1l5p_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 21 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/lf/1lfd_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1lfd_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 22 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/lm/1lm8_B.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1lm8_B.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 23 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/lx/1lxd_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1lxd_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 24 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ma/4mac_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/4mac_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 25 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/mg/1mg4_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1mg4_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 26 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/np/2npt_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2npt_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 27 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/np/2npt_B.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2npt_B.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 28 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ny/3ny5_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3ny5_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 29 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/o2/2o2v_B.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2o2v_B.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 30 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/oe/1oey_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1oey_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 31 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/oe/1oey_J.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1oey_J.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 32 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/pg/1pgx_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1pgx_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 33 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/pk/2pko_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2pko_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 34 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/pz/3pz7_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3pz7_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 35 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/qq/3qq8_B.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3qq8_B.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 36 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/r2/2r2o_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2r2o_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 37 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/re/2rex_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/2rex_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 38 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/t0/1t0q_C.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1t0q_C.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 39 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/ti/1tif_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1tif_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 40 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/vj/1vjk_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1vjk_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 41 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/vr/1vr7_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1vr7_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 42 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/w1/3w1y_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/3w1y_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 43 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/wm/1wmh_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1wmh_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 44 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/wm/1wmh_B.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1wmh_B.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 45 )); then
/work/lpdi/bin/utils/master --query step01/imaster.query01.pds --target /work/lpdi/databases/maps/wz/1wz3_A.pds --rmsdCut 5.0 --topN 1 --matchOut step01/_master/1wz3_A.master_${SLURM_ARRAY_TASK_ID}
cat step01/_master/*_${SLURM_ARRAY_TASK_ID} > step01/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step01/_${SLURM_ARRAY_TASK_ID}.master -present A3E.A4E.A1E.A2E -out step01/_${SLURM_ARRAY_TASK_ID}.geo
fi