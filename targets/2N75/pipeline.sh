ROOT=$(git rev-parse --show-toplevel)

ID='srch2N75'
TPLG='B3E8.C2H10.B4E8.A2H13.B2E8.A1H13.B1E8.C1H10'

if [ ! -f ${ID}.absolute.yml ]; then
  topo.case -name ${ID} -topology ${TPLG}
  topo.absolute -case ${ID}.yml -corrections corrections.yml -caseout ${ID}.absolute
fi

#topo.protocol -case ${ID}.absolute.yml -protocol flow_naive.funfoldes.protocol.yml
topo.protocol -case ${ID}.absolute.yml -protocol flow_natlik.funfoldes.protocol.yml
#topo.protocol -case ${ID}.absolute.yml -protocol flow_naive.hybridize.protocol.yml
#topo.protocol -case ${ID}.absolute.yml -protocol flow_natlik.hybridize.protocol.yml
