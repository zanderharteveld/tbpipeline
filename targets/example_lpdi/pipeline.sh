ROOT=$(git rev-parse --show-toplevel)

ID='srchXLPDI'
TPLG='A1E8.A2E8.A3E8.B2H16'

if [ ! -f ${ID}.absolute.yml ]; then
  topo.case -name ${ID} -topology ${TPLG}
  topo.absolute -case ${ID}.yml -corrections corrections.yml -caseout ${ID}.absolute
fi

topo.protocol -case ${ID}.absolute.yml -protocol flow_naive.funfoldes.protocol.yml
#topo.protocol -case ${ID}.absolute.yml -protocol flow_natlik.funfoldes.protocol.yml
