#!/bin/bash

SLURM_ARRAY_TASK_ID=$1

if (( ${SLURM_ARRAY_TASK_ID} == 1 )); then
/work/lpdi/bin/utils/master --query step03/imaster.query03.pds --target /work/lpdi/databases/maps/aa/1aaz_A.pds --rmsdCut 5.0 --topN 1 --matchOut step03/_master/1aaz_A.master_${SLURM_ARRAY_TASK_ID}
cat step03/_master/*_${SLURM_ARRAY_TASK_ID} > step03/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step03/_${SLURM_ARRAY_TASK_ID}.master -present B3E.C2H.B4E.B2E.B1E.C1H -out step03/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 2 )); then
/work/lpdi/bin/utils/master --query step03/imaster.query03.pds --target /work/lpdi/databases/maps/b4/2b4a_A.pds --rmsdCut 5.0 --topN 1 --matchOut step03/_master/2b4a_A.master_${SLURM_ARRAY_TASK_ID}
cat step03/_master/*_${SLURM_ARRAY_TASK_ID} > step03/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step03/_${SLURM_ARRAY_TASK_ID}.master -present B3E.C2H.B4E.B2E.B1E.C1H -out step03/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 3 )); then
/work/lpdi/bin/utils/master --query step03/imaster.query03.pds --target /work/lpdi/databases/maps/ct/3ctf_A.pds --rmsdCut 5.0 --topN 1 --matchOut step03/_master/3ctf_A.master_${SLURM_ARRAY_TASK_ID}
cat step03/_master/*_${SLURM_ARRAY_TASK_ID} > step03/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step03/_${SLURM_ARRAY_TASK_ID}.master -present B3E.C2H.B4E.B2E.B1E.C1H -out step03/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 4 )); then
/work/lpdi/bin/utils/master --query step03/imaster.query03.pds --target /work/lpdi/databases/maps/d2/3d21_A.pds --rmsdCut 5.0 --topN 1 --matchOut step03/_master/3d21_A.master_${SLURM_ARRAY_TASK_ID}
cat step03/_master/*_${SLURM_ARRAY_TASK_ID} > step03/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step03/_${SLURM_ARRAY_TASK_ID}.master -present B3E.C2H.B4E.B2E.B1E.C1H -out step03/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 5 )); then
/work/lpdi/bin/utils/master --query step03/imaster.query03.pds --target /work/lpdi/databases/maps/eo/3eod_A.pds --rmsdCut 5.0 --topN 1 --matchOut step03/_master/3eod_A.master_${SLURM_ARRAY_TASK_ID}
cat step03/_master/*_${SLURM_ARRAY_TASK_ID} > step03/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step03/_${SLURM_ARRAY_TASK_ID}.master -present B3E.C2H.B4E.B2E.B1E.C1H -out step03/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 6 )); then
/work/lpdi/bin/utils/master --query step03/imaster.query03.pds --target /work/lpdi/databases/maps/f3/1f37_A.pds --rmsdCut 5.0 --topN 1 --matchOut step03/_master/1f37_A.master_${SLURM_ARRAY_TASK_ID}
cat step03/_master/*_${SLURM_ARRAY_TASK_ID} > step03/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step03/_${SLURM_ARRAY_TASK_ID}.master -present B3E.C2H.B4E.B2E.B1E.C1H -out step03/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 7 )); then
/work/lpdi/bin/utils/master --query step03/imaster.query03.pds --target /work/lpdi/databases/maps/f5/2f51_A.pds --rmsdCut 5.0 --topN 1 --matchOut step03/_master/2f51_A.master_${SLURM_ARRAY_TASK_ID}
cat step03/_master/*_${SLURM_ARRAY_TASK_ID} > step03/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step03/_${SLURM_ARRAY_TASK_ID}.master -present B3E.C2H.B4E.B2E.B1E.C1H -out step03/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 8 )); then
/work/lpdi/bin/utils/master --query step03/imaster.query03.pds --target /work/lpdi/databases/maps/fz/3fz4_A.pds --rmsdCut 5.0 --topN 1 --matchOut step03/_master/3fz4_A.master_${SLURM_ARRAY_TASK_ID}
cat step03/_master/*_${SLURM_ARRAY_TASK_ID} > step03/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step03/_${SLURM_ARRAY_TASK_ID}.master -present B3E.C2H.B4E.B2E.B1E.C1H -out step03/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 9 )); then
/work/lpdi/bin/utils/master --query step03/imaster.query03.pds --target /work/lpdi/databases/maps/gm/1gmx_A.pds --rmsdCut 5.0 --topN 1 --matchOut step03/_master/1gmx_A.master_${SLURM_ARRAY_TASK_ID}
cat step03/_master/*_${SLURM_ARRAY_TASK_ID} > step03/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step03/_${SLURM_ARRAY_TASK_ID}.master -present B3E.C2H.B4E.B2E.B1E.C1H -out step03/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 10 )); then
/work/lpdi/bin/utils/master --query step03/imaster.query03.pds --target /work/lpdi/databases/maps/gn/3gnj_A.pds --rmsdCut 5.0 --topN 1 --matchOut step03/_master/3gnj_A.master_${SLURM_ARRAY_TASK_ID}
cat step03/_master/*_${SLURM_ARRAY_TASK_ID} > step03/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step03/_${SLURM_ARRAY_TASK_ID}.master -present B3E.C2H.B4E.B2E.B1E.C1H -out step03/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 11 )); then
/work/lpdi/bin/utils/master --query step03/imaster.query03.pds --target /work/lpdi/databases/maps/h7/1h75_A.pds --rmsdCut 5.0 --topN 1 --matchOut step03/_master/1h75_A.master_${SLURM_ARRAY_TASK_ID}
cat step03/_master/*_${SLURM_ARRAY_TASK_ID} > step03/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step03/_${SLURM_ARRAY_TASK_ID}.master -present B3E.C2H.B4E.B2E.B1E.C1H -out step03/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 12 )); then
/work/lpdi/bin/utils/master --query step03/imaster.query03.pds --target /work/lpdi/databases/maps/h7/3h79_A.pds --rmsdCut 5.0 --topN 1 --matchOut step03/_master/3h79_A.master_${SLURM_ARRAY_TASK_ID}
cat step03/_master/*_${SLURM_ARRAY_TASK_ID} > step03/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step03/_${SLURM_ARRAY_TASK_ID}.master -present B3E.C2H.B4E.B2E.B1E.C1H -out step03/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 13 )); then
/work/lpdi/bin/utils/master --query step03/imaster.query03.pds --target /work/lpdi/databases/maps/hs/4hs1_A.pds --rmsdCut 5.0 --topN 1 --matchOut step03/_master/4hs1_A.master_${SLURM_ARRAY_TASK_ID}
cat step03/_master/*_${SLURM_ARRAY_TASK_ID} > step03/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step03/_${SLURM_ARRAY_TASK_ID}.master -present B3E.C2H.B4E.B2E.B1E.C1H -out step03/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 14 )); then
/work/lpdi/bin/utils/master --query step03/imaster.query03.pds --target /work/lpdi/databases/maps/ht/2ht9_A.pds --rmsdCut 5.0 --topN 1 --matchOut step03/_master/2ht9_A.master_${SLURM_ARRAY_TASK_ID}
cat step03/_master/*_${SLURM_ARRAY_TASK_ID} > step03/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step03/_${SLURM_ARRAY_TASK_ID}.master -present B3E.C2H.B4E.B2E.B1E.C1H -out step03/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 15 )); then
/work/lpdi/bin/utils/master --query step03/imaster.query03.pds --target /work/lpdi/databases/maps/hx/3hxs_A.pds --rmsdCut 5.0 --topN 1 --matchOut step03/_master/3hxs_A.master_${SLURM_ARRAY_TASK_ID}
cat step03/_master/*_${SLURM_ARRAY_TASK_ID} > step03/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step03/_${SLURM_ARRAY_TASK_ID}.master -present B3E.C2H.B4E.B2E.B1E.C1H -out step03/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 16 )); then
/work/lpdi/bin/utils/master --query step03/imaster.query03.pds --target /work/lpdi/databases/maps/hz/3hz4_A.pds --rmsdCut 5.0 --topN 1 --matchOut step03/_master/3hz4_A.master_${SLURM_ARRAY_TASK_ID}
cat step03/_master/*_${SLURM_ARRAY_TASK_ID} > step03/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step03/_${SLURM_ARRAY_TASK_ID}.master -present B3E.C2H.B4E.B2E.B1E.C1H -out step03/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 17 )); then
/work/lpdi/bin/utils/master --query step03/imaster.query03.pds --target /work/lpdi/databases/maps/ii/1iib_A.pds --rmsdCut 5.0 --topN 1 --matchOut step03/_master/1iib_A.master_${SLURM_ARRAY_TASK_ID}
cat step03/_master/*_${SLURM_ARRAY_TASK_ID} > step03/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step03/_${SLURM_ARRAY_TASK_ID}.master -present B3E.C2H.B4E.B2E.B1E.C1H -out step03/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 18 )); then
/work/lpdi/bin/utils/master --query step03/imaster.query03.pds --target /work/lpdi/databases/maps/ku/4kun_A.pds --rmsdCut 5.0 --topN 1 --matchOut step03/_master/4kun_A.master_${SLURM_ARRAY_TASK_ID}
cat step03/_master/*_${SLURM_ARRAY_TASK_ID} > step03/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step03/_${SLURM_ARRAY_TASK_ID}.master -present B3E.C2H.B4E.B2E.B1E.C1H -out step03/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 19 )); then
/work/lpdi/bin/utils/master --query step03/imaster.query03.pds --target /work/lpdi/databases/maps/l4/3l4n_A.pds --rmsdCut 5.0 --topN 1 --matchOut step03/_master/3l4n_A.master_${SLURM_ARRAY_TASK_ID}
cat step03/_master/*_${SLURM_ARRAY_TASK_ID} > step03/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step03/_${SLURM_ARRAY_TASK_ID}.master -present B3E.C2H.B4E.B2E.B1E.C1H -out step03/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 20 )); then
/work/lpdi/bin/utils/master --query step03/imaster.query03.pds --target /work/lpdi/databases/maps/oj/2ojl_A.pds --rmsdCut 5.0 --topN 1 --matchOut step03/_master/2ojl_A.master_${SLURM_ARRAY_TASK_ID}
cat step03/_master/*_${SLURM_ARRAY_TASK_ID} > step03/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step03/_${SLURM_ARRAY_TASK_ID}.master -present B3E.C2H.B4E.B2E.B1E.C1H -out step03/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 21 )); then
/work/lpdi/bin/utils/master --query step03/imaster.query03.pds --target /work/lpdi/databases/maps/r4/2r48_A.pds --rmsdCut 5.0 --topN 1 --matchOut step03/_master/2r48_A.master_${SLURM_ARRAY_TASK_ID}
cat step03/_master/*_${SLURM_ARRAY_TASK_ID} > step03/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step03/_${SLURM_ARRAY_TASK_ID}.master -present B3E.C2H.B4E.B2E.B1E.C1H -out step03/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 22 )); then
/work/lpdi/bin/utils/master --query step03/imaster.query03.pds --target /work/lpdi/databases/maps/r5/1r5p_A.pds --rmsdCut 5.0 --topN 1 --matchOut step03/_master/1r5p_A.master_${SLURM_ARRAY_TASK_ID}
cat step03/_master/*_${SLURM_ARRAY_TASK_ID} > step03/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step03/_${SLURM_ARRAY_TASK_ID}.master -present B3E.C2H.B4E.B2E.B1E.C1H -out step03/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 23 )); then
/work/lpdi/bin/utils/master --query step03/imaster.query03.pds --target /work/lpdi/databases/maps/rd/3rdw_A.pds --rmsdCut 5.0 --topN 1 --matchOut step03/_master/3rdw_A.master_${SLURM_ARRAY_TASK_ID}
cat step03/_master/*_${SLURM_ARRAY_TASK_ID} > step03/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step03/_${SLURM_ARRAY_TASK_ID}.master -present B3E.C2H.B4E.B2E.B1E.C1H -out step03/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 24 )); then
/work/lpdi/bin/utils/master --query step03/imaster.query03.pds --target /work/lpdi/databases/maps/rh/3rhb_A.pds --rmsdCut 5.0 --topN 1 --matchOut step03/_master/3rhb_A.master_${SLURM_ARRAY_TASK_ID}
cat step03/_master/*_${SLURM_ARRAY_TASK_ID} > step03/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step03/_${SLURM_ARRAY_TASK_ID}.master -present B3E.C2H.B4E.B2E.B1E.C1H -out step03/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 25 )); then
/work/lpdi/bin/utils/master --query step03/imaster.query03.pds --target /work/lpdi/databases/maps/rw/1rw1_A.pds --rmsdCut 5.0 --topN 1 --matchOut step03/_master/1rw1_A.master_${SLURM_ARRAY_TASK_ID}
cat step03/_master/*_${SLURM_ARRAY_TASK_ID} > step03/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step03/_${SLURM_ARRAY_TASK_ID}.master -present B3E.C2H.B4E.B2E.B1E.C1H -out step03/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 26 )); then
/work/lpdi/bin/utils/master --query step03/imaster.query03.pds --target /work/lpdi/databases/maps/t1/1t1j_A.pds --rmsdCut 5.0 --topN 1 --matchOut step03/_master/1t1j_A.master_${SLURM_ARRAY_TASK_ID}
cat step03/_master/*_${SLURM_ARRAY_TASK_ID} > step03/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step03/_${SLURM_ARRAY_TASK_ID}.master -present B3E.C2H.B4E.B2E.B1E.C1H -out step03/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 27 )); then
/work/lpdi/bin/utils/master --query step03/imaster.query03.pds --target /work/lpdi/databases/maps/tt/1ttz_A.pds --rmsdCut 5.0 --topN 1 --matchOut step03/_master/1ttz_A.master_${SLURM_ARRAY_TASK_ID}
cat step03/_master/*_${SLURM_ARRAY_TASK_ID} > step03/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step03/_${SLURM_ARRAY_TASK_ID}.master -present B3E.C2H.B4E.B2E.B1E.C1H -out step03/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 28 )); then
/work/lpdi/bin/utils/master --query step03/imaster.query03.pds --target /work/lpdi/databases/maps/vf/3vfi_A.pds --rmsdCut 5.0 --topN 1 --matchOut step03/_master/3vfi_A.master_${SLURM_ARRAY_TASK_ID}
cat step03/_master/*_${SLURM_ARRAY_TASK_ID} > step03/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step03/_${SLURM_ARRAY_TASK_ID}.master -present B3E.C2H.B4E.B2E.B1E.C1H -out step03/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 29 )); then
/work/lpdi/bin/utils/master --query step03/imaster.query03.pds --target /work/lpdi/databases/maps/wc/2wci_A.pds --rmsdCut 5.0 --topN 1 --matchOut step03/_master/2wci_A.master_${SLURM_ARRAY_TASK_ID}
cat step03/_master/*_${SLURM_ARRAY_TASK_ID} > step03/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step03/_${SLURM_ARRAY_TASK_ID}.master -present B3E.C2H.B4E.B2E.B1E.C1H -out step03/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 30 )); then
/work/lpdi/bin/utils/master --query step03/imaster.query03.pds --target /work/lpdi/databases/maps/wo/1wou_A.pds --rmsdCut 5.0 --topN 1 --matchOut step03/_master/1wou_A.master_${SLURM_ARRAY_TASK_ID}
cat step03/_master/*_${SLURM_ARRAY_TASK_ID} > step03/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step03/_${SLURM_ARRAY_TASK_ID}.master -present B3E.C2H.B4E.B2E.B1E.C1H -out step03/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 31 )); then
/work/lpdi/bin/utils/master --query step03/imaster.query03.pds --target /work/lpdi/databases/maps/wz/2wz9_A.pds --rmsdCut 5.0 --topN 1 --matchOut step03/_master/2wz9_A.master_${SLURM_ARRAY_TASK_ID}
cat step03/_master/*_${SLURM_ARRAY_TASK_ID} > step03/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step03/_${SLURM_ARRAY_TASK_ID}.master -present B3E.C2H.B4E.B2E.B1E.C1H -out step03/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 32 )); then
/work/lpdi/bin/utils/master --query step03/imaster.query03.pds --target /work/lpdi/databases/maps/xg/1xg8_A.pds --rmsdCut 5.0 --topN 1 --matchOut step03/_master/1xg8_A.master_${SLURM_ARRAY_TASK_ID}
cat step03/_master/*_${SLURM_ARRAY_TASK_ID} > step03/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step03/_${SLURM_ARRAY_TASK_ID}.master -present B3E.C2H.B4E.B2E.B1E.C1H -out step03/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 33 )); then
/work/lpdi/bin/utils/master --query step03/imaster.query03.pds --target /work/lpdi/databases/maps/y8/1y81_A.pds --rmsdCut 5.0 --topN 1 --matchOut step03/_master/1y81_A.master_${SLURM_ARRAY_TASK_ID}
cat step03/_master/*_${SLURM_ARRAY_TASK_ID} > step03/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step03/_${SLURM_ARRAY_TASK_ID}.master -present B3E.C2H.B4E.B2E.B1E.C1H -out step03/_${SLURM_ARRAY_TASK_ID}.geo
fi
if (( ${SLURM_ARRAY_TASK_ID} == 34 )); then
/work/lpdi/bin/utils/master --query step03/imaster.query03.pds --target /work/lpdi/databases/maps/z3/1z3e_A.pds --rmsdCut 5.0 --topN 1 --matchOut step03/_master/1z3e_A.master_${SLURM_ARRAY_TASK_ID}
cat step03/_master/*_${SLURM_ARRAY_TASK_ID} > step03/_${SLURM_ARRAY_TASK_ID}.master
python /work/lpdi/users/hartevel/bin/topobuilder/topobuilder/base_plugins/imaster/imaster.py -case current.yml -master step03/_${SLURM_ARRAY_TASK_ID}.master -present B3E.C2H.B4E.B2E.B1E.C1H -out step03/_${SLURM_ARRAY_TASK_ID}.geo
fi