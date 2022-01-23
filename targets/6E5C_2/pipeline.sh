ROOT=$(git rev-parse --show-toplevel)

ID='srch6E5C02'
#TPLG='A1E8.B1E8.A3E8.B3E5.B4E5.A4E8.B2E8.A2E8'
TPLG='A1E8.B1E8.A3E8.B3E4.B4E4.A4E8.B2E8.A2E8'

if [ ! -f ${ID}.absolute.yml ]; then
  topo.case -name ${ID} -topology ${TPLG}
  topo.absolute -case ${ID}.yml -corrections corrections.yml -caseout ${ID}.absolute
fi

topo.protocol -case ${ID}.absolute.yml -protocol flow_naive.funfoldes.protocol.yml
#topo.protocol -case ${ID}.absolute.yml -protocol flow_natlik.funfoldes.protocol.yml
#topo.protocol -case ${ID}.absolute.yml -protocol flow_naive.hybridize.protocol.yml
#topo.protocol -case ${ID}.absolute.yml -protocol flow_natlik.hybridize.protocol.yml
