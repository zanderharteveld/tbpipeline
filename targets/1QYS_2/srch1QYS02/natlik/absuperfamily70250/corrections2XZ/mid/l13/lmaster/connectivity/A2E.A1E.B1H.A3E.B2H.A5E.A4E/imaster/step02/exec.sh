#!/bin/bash

SLURM_ARRAY_TASK_ID=$1

if (( ${SLURM_ARRAY_TASK_ID} == 1 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/a1/2a10_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2a10_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/a4/1a41_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1a41_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/a7/2a78_B.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2a78_B.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 2 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/a8/4a8x_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/4a8x_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/ab/1ab8_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1ab8_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/ae/1ae9_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1ae9_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 3 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/ai/1aih_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1aih_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/ap/2ap6_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2ap6_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/au/2aua_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2aua_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 4 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/b2/4b2b_B.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/4b2b_B.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/b3/1b3t_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1b3t_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/b8/3b8o_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/3b8o_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 5 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/bb/2bbe_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2bbe_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/bg/3bgo_P.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/3bgo_P.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/bj/2bjd_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2bjd_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 6 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/bv/1bv4_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1bv4_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/bx/3bx4_B.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/3bx4_B.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/by/1byf_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1byf_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 7 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/by/2byc_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2byc_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/c8/3c8j_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/3c8j_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/ca/2ca9_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2ca9_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 8 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/cc/1cc7_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1cc7_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/ce/3ced_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/3ced_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/cf/2cfx_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2cfx_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 9 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/cf/3cfw_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/3cfw_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/cj/3cjk_B.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/3cjk_B.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/cs/1cs4_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1cs4_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 10 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/cv/1cvj_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1cvj_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/cv/1cvj_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1cvj_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/cv/2cve_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2cve_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 11 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/cz/2cz4_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2cz4_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/cz/2czv_C.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2czv_C.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/d2/3d2w_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/3d2w_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 12 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/dc/2dcl_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2dcl_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/df/3dfe_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/3dfe_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/dh/3dhx_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/3dhx_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 13 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/dt/1dtp_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1dtp_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/dy/1dy0_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1dy0_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/e2/4e29_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/4e29_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 14 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/e3/3e3u_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/3e3u_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/ea/1ear_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1ear_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/ee/2eey_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2eey_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 15 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/eg/3egn_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/3egn_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/ei/2ei9_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2ei9_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/ek/2ekn_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2ekn_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 16 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/ek/2eky_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2eky_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/es/3ess_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/3ess_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/ew/2ewh_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2ewh_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 17 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/ex/3exc_X.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/3exc_X.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/f0/2f06_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2f06_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/f0/2f06_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2f06_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 18 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/f2/4f25_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/4f25_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/f3/1f3v_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1f3v_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/f6/1f60_B.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1f60_B.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 19 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/f9/2f9d_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2f9d_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/fd/3fd4_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/3fd4_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/fd/4fdf_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/4fdf_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 20 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/fg/2fgc_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2fgc_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/fg/2fgc_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2fgc_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/fi/2fiu_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2fiu_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 21 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/fm/1fm5_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1fm5_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/fm/3fmb_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/3fmb_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/ft/2ftr_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2ftr_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 22 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/fv/1fva_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1fva_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/fx/1fx2_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1fx2_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/fx/4fxv_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/4fxv_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 23 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/fy/2fyx_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2fyx_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/g5/2g5x_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2g5x_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/gf/2gff_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2gff_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 24 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/gm/1gmu_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1gmu_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/go/2go8_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2go8_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/gs/3gsd_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/3gsd_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 25 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/gv/4gvb_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/4gvb_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/gw/4gwb_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/4gwb_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/gx/1gxt_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1gxt_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 26 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/gx/1gxy_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1gxy_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/h0/1h0h_B.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1h0h_B.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/h2/1h2t_Z.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1h2t_Z.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 27 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/h2/2h2r_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2h2r_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/h6/1h6k_X.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1h6k_X.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/h8/1h8u_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1h8u_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 28 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/h9/1h98_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1h98_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/hd/3hds_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/3hds_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/hf/2hfn_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2hfn_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 29 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/hl/1hl6_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1hl6_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/hw/4hwx_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/4hwx_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/hx/3hx9_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/3hx9_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 30 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/hy/2hyi_B.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2hyi_B.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/hz/2hzc_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2hzc_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/i8/2i8e_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2i8e_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 31 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/if/2ifx_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2ifx_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/in/1in0_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1in0_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/in/1in0_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1in0_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 32 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/iq/1iqz_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1iqz_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/ir/1ire_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1ire_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/iu/1iuj_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1iuj_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 33 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/iy/2iyg_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2iyg_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/j2/1j27_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1j27_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/j5/2j5a_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2j5a_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 34 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/j9/2j9c_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2j9c_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/jj/1jjh_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1jjh_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/jm/1jmt_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1jmt_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 35 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/jn/1jnr_B.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1jnr_B.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/k6/4k6l_G.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/4k6l_G.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/kr/3kre_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/3kre_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 36 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/l3/1l3k_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1l3k_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/l3/1l3k_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1l3k_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/l8/3l87_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/3l87_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 37 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/lb/4lbh_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/4lbh_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/li/1li1_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1li1_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/li/1li1_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1li1_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 38 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/lo/3lo3_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/3lo3_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/lq/1lq9_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1lq9_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/lt/1lt4_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1lt4_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 39 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/lx/1lxj_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1lxj_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/m5/4m5g_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/4m5g_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/m9/3m9z_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/3m9z_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 40 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/mr/3mr7_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/3mr7_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/mw/1mwq_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1mwq_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/n9/3n9u_C.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/3n9u_C.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 41 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/ng/3ngk_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/3ngk_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/nu/2nuh_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2nuh_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/nw/1nwa_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1nwa_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 42 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/ny/2nyh_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2nyh_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/nz/2nzc_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2nzc_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/o0/2o0p_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2o0p_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 43 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/o5/1o51_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1o51_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/o6/2o66_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2o66_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/od/2od4_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2od4_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 44 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/od/2od6_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2od6_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/ok/2okq_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2okq_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/om/2omo_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2omo_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 45 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/oo/1oo0_B.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1oo0_B.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/op/2op5_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2op5_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/oq/3oq2_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/3oq2_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 46 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/os/1osc_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1osc_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/oz/1ozj_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1ozj_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/oz/4ozj_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/4ozj_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 47 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/p5/2p5v_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2p5v_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/p7/4p7v_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/4p7v_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/p9/1p9q_C.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1p9q_C.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 48 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/pa/3pac_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/3pac_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/pa/3pac_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/3pac_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/pc/1pc4_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1pc4_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 49 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/pc/2pc6_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2pc6_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/pc/2pc6_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2pc6_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/pd/2pd1_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2pd1_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 50 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/pe/2peb_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2peb_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/pf/2pf5_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2pf5_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/pg/1pg5_B.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1pg5_B.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 51 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/pg/2pgc_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2pgc_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/pi/3pim_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/3pim_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/pw/1pw9_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1pw9_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 52 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/py/1pyt_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1pyt_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/q4/1q4r_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1q4r_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/q5/1q5v_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1q5v_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 53 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/q7/2q79_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2q79_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/q8/1q8b_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1q8b_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/ql/2qlw_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2qlw_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 54 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/ql/2qlx_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2qlx_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/qn/2qn6_B.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2qn6_B.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/qq/2qqd_C.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2qqd_C.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 55 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/qu/1qup_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1qup_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/qy/2qyc_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2qyc_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/r2/3r27_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/3r27_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 56 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/r5/3r5g_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/3r5g_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/r6/1r6y_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1r6y_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/r8/1r8h_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1r8h_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 57 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/re/1reg_X.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1reg_X.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/s2/1s21_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1s21_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/s7/1s7h_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1s7h_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 58 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/s7/1s7i_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1s7i_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/s7/3s7r_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/3s7r_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/si/1si9_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1si9_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 59 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/sl/1sl6_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1sl6_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/sp/1spb_P.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1spb_P.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/ss/3ssq_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/3ssq_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 60 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/tr/3trg_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/3trg_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/tu/1tuw_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1tuw_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/tz/1tz0_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1tz0_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 61 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/u0/1u0s_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1u0s_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/u8/1u8s_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1u8s_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/u8/1u8s_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1u8s_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 62 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/ue/3ue2_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/3ue2_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/ul/3ulh_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/3ulh_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/ur/1urr_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1urr_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 63 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/uu/1uuh_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1uuh_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/uw/1uw4_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1uw4_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/v0/2v0r_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2v0r_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 64 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/v3/1v3z_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1v3z_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/v5/1v5i_B.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1v5i_B.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/vd/1vdh_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1vdh_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 65 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/vk/1vk8_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1vk8_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/vm/1vmb_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1vmb_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/vm/1vmj_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1vmj_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 66 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/vq/1vqs_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1vqs_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/w0/2w01_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2w01_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/wc/1wc1_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1wc1_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 67 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/wd/1wdu_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1wdu_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/x1/2x1a_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2x1a_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/x7/1x7v_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1x7v_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 68 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/xe/1xer_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1xer_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/xq/1xqi_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1xqi_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/xr/2xr6_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2xr6_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 69 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/y0/1y0h_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1y0h_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/y3/2y3y_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2y3y_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/y7/1y7p_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1y7p_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 70 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/yb/1ybt_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1ybt_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/yq/1yqh_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1yqh_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/za/1zav_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1zav_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 71 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/zd/2zdp_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2zdp_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/zf/2zfh_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/2zfh_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/zh/1zh5_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1zh5_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 72 )); then
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/zh/1zhv_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1zhv_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/zh/1zhv_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/1zhv_A.master_${SLURM_ARRAY_TASK_ID}
/work/lpdi/bin/utils/master --query step02/imaster.query02.pds --target /work/lpdi/databases/maps/zh/3zhg_A.pds --rmsdCut 5.0 --topN 1 --matchOut step02/_master/3zhg_A.master_${SLURM_ARRAY_TASK_ID}
cat step02/_master/*_${SLURM_ARRAY_TASK_ID} > step02/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step02/_${SLURM_ARRAY_TASK_ID}.master -present A2E.A1E.B1H.A3E.B2H.A5E.A4E -out step02/_${SLURM_ARRAY_TASK_ID}.geo
fi