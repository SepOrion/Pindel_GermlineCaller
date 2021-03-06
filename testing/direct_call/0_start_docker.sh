# start docker image with ../demo_data mapped to /data,
# unless another path is passed on command line.  uses
# the start_docker.sh script in /docker

source ../../docker/docker_image.sh

# katmai
VEP_ROOT="/diskmnt/Datasets/VEP"
REF_ROOT="/diskmnt/Datasets/Reference"
#DATA_ROOT="/home/mwyczalk_test/Projects/GermlineCaller/C3L-00001"
DATA_ROOT="/home/mwyczalk_test/Projects/GermlineCaller/TinJasmine/submodules/Pindel_GermlineCaller/testing/demo_data"

# MGI
#VEP_ROOT="/gscmnt/gc7202/dinglab/common/databases/VEP"
#REF_ROOT="/gscmnt/gc7202/dinglab/common/Reference/A_Reference"
##DATA_ROOT="/gscmnt/gc2508/dinglab/mwyczalk/GermlineCaller.Testing/C3L-00001"
#DATA_ROOT="/gscmnt/gc2541/cptac3_analysis/cromwell-workdir/cromwell-executions/TinJasmine.cwl"
#ARGS="-M MGI -P"

MOUNT="$VEP_ROOT:/vep"
MOUNT="$MOUNT $REF_ROOT:/ref"
MOUNT="$MOUNT $DATA_ROOT:/data"

cd ../.. && bash docker/WUDocker/start_docker.sh $ARGS $@ -I $IMAGE $MOUNT

