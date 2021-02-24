# Taking default values
WORK_DIR=`pwd`
CONTAINER_WORK_DIR="/home/Suassuna-VSS"
CONTAINER_NAME="maracatronics-vss-container"
DOCKER_IMAGE="maracatronics-vss"

# Running docker
docker run  -it \
            --rm \
            --name=$CONTAINER_NAME \
            --net=host \
            --privileged \
            --workdir="${CONTAINER_WORK_DIR}" \
            --volume="${WORK_DIR}/scripts/updateRepo.sh:${CONTAINER_WORK_DIR}/updateRepo.sh" \
            --volume="/dev:/dev" \
            -v $HOME/.Xauthority:/root/.Xauthority \
            $DOCKER_IMAGE
