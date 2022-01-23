#######################################################################################################
############################################# LIKE A FOLD #############################################
#######################################################################################################
# FILTERING FOR IG-LIKE FOLDS
python ../src/bin/filter_by_scope.py -m master.xlist -s dir.des.scope.2.06-stable.txt -p ig_like -l b.1 # writing file of shape (656, 4)
python ../src/bin/filter_by_scope.py -m master.xlist -s dir.des.scope.2.06-stable.txt -p ig_like_70_120 -l b.1 -xmax 120 -xmin 70 -d master_sse.fa.gz # writing file of shape (99, 6) 
#python ../src/bin/filter_by_scope.py -m master.xlist -s dir.des.scope.2.06-stable.txt -p ig_like_70_110 -l b.1 -xmax 110 -xmin 70 -d master_sse.fa.gz # writing file of shape (73, 6)
#######################################################################################################
# FILTERING FOR JELLY-ROLL FOLDS
python ../src/bin/filter_by_scope.py -m master.xlist -s dir.des.scope.2.06-stable.txt -p jelly_roll -l b.14 b.18 b.19 b.22 b.23 b.79 b.82 b.94 b.112 b.121 b.123 b.132 b.134 b.135 b.154 b.155 b.156 # writing file of shape (263, 4) 
python ../src/bin/filter_by_scope.py -m master.xlist -s dir.des.scope.2.06-stable.txt -p jelly_roll_70_120 -l b.14 b.18 b.19 b.22 b.23 b.79 b.82 b.94 b.112 b.121 b.123 b.132 b.134 b.135 b.154 b.155 b.156 -xmax 120 -xmin 70 -d master_sse.fa.gz # writing file of shape (24, 6)
python ../src/bin/filter_by_scope.py -m master.xlist -s dir.des.scope.2.06-stable.txt -p jelly_roll_70_110 -l b.14 b.18 b.19 b.22 b.23 b.79 b.82 b.94 b.112 b.121 b.123 b.132 b.134 b.135 b.154 b.155 b.156 -xmax 110 -xmin 70 -d master_sse.fa.gz # writing file of shape (15, 6)
#######################################################################################################
# FILTERING FOR UB-LIKE FOLDS
python ../src/bin/filter_by_scope.py -m master.xlist -s dir.des.scope.2.06-stable.txt -p ub_like -l d.15 d.343 # writing file of shape (178, 4)
python ../src/bin/filter_by_scope.py -m master.xlist -s dir.des.scope.2.06-stable.txt -p ub_like_70_120 -l d.15 d.343 -xmax 120 -xmin 70 -d master_sse.fa.gz # writing file of shape (45, 6)
#######################################################################################################
# FILTERING FOR ROSSMANN-LIKE FOLDS
python ../src/bin/filter_by_scope.py -m master.xlist -s dir.des.scope.2.06-stable.txt -p rm_like -l c.2 c.4 c.27 c.28 c.31 # writing file of shape (512, 4)
python ../src/bin/filter_by_scope.py -m master.xlist -s dir.des.scope.2.06-stable.txt -p rm_like_70_120 -l c.2 c.4 c.27 c.28 c.31 -xmax 120 -xmin 70 -d master_sse.fa.gz # writing file of shape (34, 6)
python ../src/bin/filter_by_scope.py -m master.xlist -s dir.des.scope.2.06-stable.txt -p rm_like_70_150 -l c.2 c.4 c.27 c.28 c.31 -xmax 150 -xmin 70 -d master_sse.fa.gz # writing file of shape (84, 6)
python ../src/bin/filter_by_scope.py -m master.xlist -s dir.des.scope.2.06-stable.txt -p rm_like_70_180 -l c.2 c.4 c.27 c.28 c.31 -xmax 180 -xmin 70 -d master_sse.fa.gz # writing file of shape (129, 6)
python ../src/bin/filter_by_scope.py -m master.xlist -s dir.des.scope.2.06-stable.txt -p rm_like_70_220 -l c.2 c.4 c.27 c.28 c.31 -xmax 220 -xmin 70 -d master_sse.fa.gz # writing file of shape (190, 6)
########################################################################################################
############################################## NEXT LEVEL  #############################################
########################################################################################################
# FILTERING FOR THREE-HELICAL BUNDLES
python ../src/bin/filter_by_scope.py -m master.xlist -s dir.des.scope.2.06-stable.txt -p three_helicalbundle -l a.4 a.76 a.94 a.109 a.151 a.159 a.168 a.170 a.171 a.182 a.193 1.194 a.199 a.221 a.238 a.251 a.253 a.256 a.267 a.23 a.57 a.115 a.127 a.155 a.173 a.207 a.256 a.259 a.264 a.284 a.287 # writing file of shape (456, 4)
python ../src/bin/filter_by_scope.py -m master.xlist -s dir.des.scope.2.06-stable.txt -p three_helicalbundle_70_120 -l a.4 a.76 a.94 a.109 a.151 a.159 a.168 a.170 a.171 a.182 a.193 1.194 a.199 a.221 a.238 a.251 a.253 a.256 a.267 a.23 a.57 a.115 a.127 a.155 a.173 a.207 a.256 a.259 a.264 a.284 a.287 -xmax 120 -xmin 70 -d master_sse.fa.gz # writing file of shape (110, 6)
#######################################################################################################
# FILTERING FOR BETA-SANDWICHES
python ../src/bin/filter_by_scope.py -m master.xlist -s dir.des.scope.2.06-stable.txt -p beta_sandwich -l b.1 b.2 b.4 b.5 b.6 b.7 b.8 b.9 b.11 b.12 b.14 b.15 b.16 b.17 b.18 b.19 b.20 b.21 b.22 b.23 b.24 b.25 b.26 b.27 b.28 b.29 b.30 b.31 b.32 b.93 b.95 b.96 b.97 b.98 b.105 b.112 b.114 b.115 b.116 b.117 b.119 b.121 b.123 b.126 b.127 b.130 b.132 b.133 b.134 b.135 b.146 b.147 b.149 b.150 b.151 b.153 b.154 b.155 b.156 b.163 b.170 b.178 b.179 b.180 b.182 # writing file of shape (1745, 4)
python ../src/bin/filter_by_scope.py -m master.xlist -s dir.des.scope.2.06-stable.txt -p beta_sandwich_70_120 -l b.1 b.2 b.4 b.5 b.6 b.7 b.8 b.9 b.11 b.12 b.14 b.15 b.16 b.17 b.18 b.19 b.20 b.21 b.22 b.23 b.24 b.25 b.26 b.27 b.28 b.29 b.30 b.31 b.32 b.93 b.95 b.96 b.97 b.98 b.105 b.112 b.114 b.115 b.116 b.117 b.119 b.121 b.123 b.126 b.127 b.130 b.132 b.133 b.134 b.135 b.146 b.147 b.149 b.150 b.151 b.153 b.154 b.155 b.156 b.163 b.170 b.178 b.179 b.180 b.182 -xmax 120 -xmin 70 -d master_sse.fa.gz # writing file of shape (218, 6)
python ../src/bin/filter_by_scope.py -m master.xlist -s dir.des.scope.2.06-stable.txt -p beta_sandwich_70_120 -l b.1 b.2 b.4 b.5 b.6 b.7 b.8 b.9 b.11 b.12 b.14 b.15 b.16 b.17 b.18 b.19 b.20 b.21 b.22 b.23 b.24 b.25 b.26 b.27 b.28 b.29 b.30 b.31 b.32 b.93 b.95 b.96 b.97 b.98 b.105 b.112 b.114 b.115 b.116 b.117 b.119 b.121 b.123 b.126 b.127 b.130 b.132 b.133 b.134 b.135 b.146 b.147 b.149 b.150 b.151 b.153 b.154 b.155 b.156 b.163 b.170 b.178 b.179 b.180 b.182 -xmax 150 -xmin 70 -d master_sse.fa.gz # writing file of shape (426, 6)
#######################################################################################################
# FILTERING FOR ALPHA-BETA SANDWICHES
python ../src/bin/filter_by_scope.py -m master.xlist -s dir.des.scope.2.06-stable.txt -p alphabeta_sandwich -l d.16 d.40 d.58 d.84 d.87 d.143 d.149 d.151 d.152 d.155 d.273 # writing file of shape (409, 4)
python ../src/bin/filter_by_scope.py -m master.xlist -s dir.des.scope.2.06-stable.txt -p alphabeta_sandwich_70_120 -l d.16 d.40 d.58 d.84 d.87 d.143 d.149 d.151 d.152 d.155 d.273 -xmax 120 -xmin 70 -d master_sse.fa.gz # writing file of shape (116, 6)
python ../src/bin/filter_by_scope.py -m master.xlist -s dir.des.scope.2.06-stable.txt -p alphabeta_sandwich_70_150 -l d.16 d.40 d.58 d.84 d.87 d.143 d.149 d.151 d.152 d.155 d.273 -xmax 150 -xmin 70 -d master_sse.fa.gz # writing file of shape (148, 6) 
python ../src/bin/filter_by_scope.py -m master.xlist -s dir.des.scope.2.06-stable.txt -p alphabeta_sandwich_70_180 -l d.16 d.40 d.58 d.84 d.87 d.143 d.149 d.151 d.152 d.155 d.273 -xmax 180 -xmin 70 -d master_sse.fa.gz # writing file of shape (178, 6)
python ../src/bin/filter_by_scope.py -m master.xlist -s dir.des.scope.2.06-stable.txt -p alphabeta_sandwich_70_250 -l d.16 d.40 d.58 d.84 d.87 d.143 d.149 d.151 d.152 d.155 d.273 -xmax 250 -xmin 70 -d master_sse.fa.gz # writing file of shape (216, 6) 
#######################################################################################################
# FILTERING FOR ALPHA/BETA PROTEINS
python ../src/bin/filter_by_scope.py -m master.xlist -s dir.des.scope.2.06-stable.txt -p alphabeta_superfamily -l c. d. # writing file of shape (4720, 4)
python ../src/bin/filter_by_scope.py -m master.xlist -s dir.des.scope.2.06-stable.txt -p alphabeta_superfamily_70_120 -l c. d. -xmax 120 -xmin 70 -d master_sse.fa.gz # writing file of shape (509, 6)
python ../src/bin/filter_by_scope.py -m master.xlist -s dir.des.scope.2.06-stable.txt -p alphabeta_superfamily_70_130 -l c. d. -xmax 130 -xmin 70 -d master_sse.fa.gz # writing file of shape (670, 6) 
python ../src/bin/filter_by_scope.py -m master.xlist -s dir.des.scope.2.06-stable.txt -p alphabeta_superfamily_70_150 -l c. d. -xmax 150 -xmin 70 -d master_sse.fa.gz # writing file of shape (981, 6) 
#######################################################################################################
# FILTERING ONLY BY SIZE
python ../src/bin/filter_by_scope.py -m master.xlist -s dir.des.scope.2.06-stable.txt -p all_superfamily_70_120 -l a. b. c. d. -xmax 120 -xmin 70 -d master_sse.fa.gz # writing file of shape (1159, 6)
python ../src/bin/filter_by_scope.py -m master.xlist -s dir.des.scope.2.06-stable.txt -p all_superfamily_70_250 -l a. b. c. d. -xmax 250 -xmin 70 -d master_sse.fa.gz # writing file of shape (4116, 6)

