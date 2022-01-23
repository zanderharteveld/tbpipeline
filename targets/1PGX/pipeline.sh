ROOT=$(git rev-parse --show-toplevel)

ID='srch1PGX'
TPLG='A3E8.A4E8.B1H17.A1E8.A2E8'

if [ ! -f ${ID}.absolute.yml ]; then
  topo.case -name ${ID} -topology ${TPLG}
  topo.absolute -case ${ID}.yml -corrections corrections.yml -caseout ${ID}.absolute
fi

#topo.protocol -case ${ID}.absolute.yml -protocol flow_naive.funfoldes.protocol.yml
topo.protocol -case ${ID}.absolute.yml -protocol flow_natlik.funfoldes.protocol.yml
#topo.protocol -case ${ID}.absolute.yml -protocol flow_naive.hybridize.protocol.yml
#topo.protocol -case ${ID}.absolute.yml -protocol flow_natlik.hybridize.protocol.yml
