# TopoBuilder Pipeline and Data

This repository contains the data required to reproduce the benchmarks and experiments as presented in:

Zander Harteveld, Jaume Bonet, Stéphane Rosset, Che Yang, Fabian Sesterhenn, and Bruno E. Correia. *A generic framework for layered de novo protein design.* (2022)

TopoBuilder documentation at: https://topobuilder.readthedocs.io/en/tb_v2/

## Download

It may be better to clone with ```git clone --depth=1 https://github.com/``` 

## Setup External Dependencies 

### Recommended

There are several external dependencies that are required to execute the main parts of the code present in this repository.

#### Rosetta

The use and installation of **Rosetta** requires of a license agreement and, thus, cannot be automatically downloaded. To install it, follow the instructions you'll find [here](https://www.rosettacommons.org/software/license-and-download).

Once the installation is finished, and from any place within this repository, execute:

```bash
export GITROOT=$(git rev-parse --show-toplevel)
ln -s $ROSETTADIR/bin/rosetta_scripts.$ROSSETTADIST $GITROOT/vendor/rosetta_scripts
```

asuming `$ROSETTADIR` as you Rosetta installation path and `$ROSSETTADIST` your Rosetta binary's suffix.

> **_NOTE:_**  In case this does not work, please directly specify the full absolute path to your Rosetta scripts executable in the TopoBuilder configuration file. 

#### MASTER

The use and installation of **MASTER** requires of a license agreement and, thus, cannot be automatically downloaded. To install it, follow the instructions you'll find [here](https://grigoryanlab.org/master/).

Once the installation is finished, and from any place within this repository, execute:

```bash
export GITROOT=$(git rev-parse --show-toplevel)
ln -s $MASTERDIR/master $GITROOT/vendor/master
ln -s $MASTERDIR/createPDS $GITROOT/vendor/createPDS
```

asuming `$MASTERDIR` as you MASTER installation path.

> **_NOTE:_**  In case this does not work, please directly specify the full absolute path to the MASTER executables in the TopoBuilder configuration file.

MASTER requires a database of protein structures to perform it's searches. To populate an example single-chain, non-redundant MASTER background database, one will need to download the original PDB and saving only the expected chain. The file [master.xlist](database/master.xlist) can serve as an example containing around 15K structures.

**Creating your custom MASTER database** will require you to do some precomputations. You need to download the PDBs you would like to include, as well as creating the PDS files using MASTER createPDS executable, creating structure fragments (3mers and 9mers) via Rosetta, calculate the ABEG0 torsions and the secondary structure patterns. Note that large databases can have an impact on the speed and the overall performance, thus we highly recommend to reduce the size of the database. It is possible to store the full database, but only subsearch over a given list of PDBs, e.g. structures in a size range of 70 AA - 120 AA and fully alpha-helical. We give some examples of such reduced list in the database folder ([all_superfamily_70_120.xfilter](database/all_superfamily_70_120.xfilter), [beta_sandwich_70_120.xfilter](database/beta_sandwich_70_120.xfilter), ...). One will need to specify the file directly within the TopoBuilder configuration file.

**Luckily, we provide a small MASTER database** that (most of the time) will be enough for most of the tasks, and contains all the structures necessary to reproduce the modeling in the paper. As the data will not automatically be downloaded. The data is located in the data-branch and needs to be manually downloaded (under database/master_pdb, database/maps, database/frags, ABEG0 torsions database/master_abego.fa.gz and secondary structure database/master_sse.fa.gz.

#### PSIPRED: 

PSIPRED is needed to predict the secondary structure from the designed sequence and compare it to the calculated secondary structure from the structural model by DSSP. Thus, you will need to install PSIPRED by following the instructions here [here](https://github.com/psipred/psipred). After that, you will need to specify the location of the executable within the TopoBuilder configuration file.

#### Python

Assuming a standard python setup, obtaining the necessary packages, including **TopoBuilder**, is as easy as `pip install -r requirements.txt`.

We would recommend to do so in a virtual environment to avoid cluttering your base Python installation.

> **NOTE:** This library will only work in *Python 3*.

#### SLURM

**Topobuilder's imaster** plugin assumes that it will be run in SLURM, which makes it that much faster, as search and process of the database can be distributed. In the configuration file `.topobuilder.cfg`, some basic SLURM parameters can be set, including the partition, to fit individual configurations. Additionally, SLURM itself can be set to *False* in order to run fully locally.

### Optional

Several other dependencies can be installed that can be useful for evaluating the models, but are not fundamentally necessary. All these dependencies are used by the statistics plugn and include: 

* **MolProbity**: To calculate the MolProbity score via their commandline application, you will need to follow the instructions for the MolProbity installation [here](https://github.com/rlabduke/MolProbity).
* **trRosetta**: If you wish to predict a possible model directly from the designed sequence using trRosetta, you will need to setup an environment that can supports trRosetta (e.g. has all dependencies installed). We recommend to use conda for this. Furthermore, required is the trRosetta repository containing all required scripts and the trained weights you wish to use. Please follow the instructions [here](https://github.com/gjoni/trRosetta).
* **TMalign**: You will need to install TMalign if you wish to use the statistics plugin in conjunction with trRosetta. Please follow the instructions [here](https://github.com/kad-ecoli/TMalign). 

## Setup the TopoBuilder configuration file

The TopoBuilder configuration file is called ```.topobuilder.cfg```, where all dependencies and configurations need to be correctly specified. There can be either one global configuration file for a full project that is located in the top folder; or several local configuration files, e.g. one for each target that are located in the respective target folders. By default, the TopoBuilder will first search for a configuration file in the current folder (target folder) where the pipeline is launched, and move to the parent folders if no configuration files is found there.

An example configuration file could look like this:

```bash
system:
  verbose: True
  debug: True
  overwrite: True
  image: png
slurm:
  use: True
  partition: serial
  array: 200
  logs: /home/user/TopoBuilderData/logs/
master:
  pds: /home/user/TopoBuilderData/database/beta_sandwich_70_120.xfilter # beta_sandwich_70_120.xfilter
  pdb: /home/user/TopoBuilderData/databases/master_pdb/
  fragments: /home/user/databases/frags/
  master: /home/user/bin/utils/master
  create: /home/user/bin/utils/createPDS
rosetta:
  scripts: /home/user/bin/Rosetta/main/source/bin/rosetta_scripts.linuxiccrelease
psipred:
  script: /home/user/bin/sequence/psipred-4/runpsipred
statistics:
  molprobity: /home/user/bin/molprobity/cmdline/oneline-analysis
  tmalign: /home/user/bin/TMalign/TMalign
  trrosetta_repo: /home/user/bin/trRosetta/
  trrosetta_wts: /home/user/bin/trRosetta/model2019_07
  trrosetta_env: /home/user/venv/py3rosetta/bin/activate
loop_master:
  abego: /home/user/TopoBuilderData/database/master_abego.fa.gz
  fragments: /home/user/TopoBuilderData/databases/frags/
```

> **NOTE:** Please adjust the the paths. 

As seen, for this particular example, we reduce the MASTER database to only take into account beta sandwich proteins of size 70 AA - 120 AA. One can also see that we specify the optional depencdencies MolProbity, TMalign and trRosetta accordingly. 
