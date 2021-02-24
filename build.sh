# Avoid errors with video
xhost +local:docker

# Building docker
docker build . -f Dockerfile -t maracatronics-vss --build-arg GIT_TOKEN=$1
