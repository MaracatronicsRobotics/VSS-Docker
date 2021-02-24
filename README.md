# VSS-Docker

## Installation

See [this](https://docs.docker.com/engine/install/ubuntu/#installation-methods) link to install docker on your computer and clone this repository.

## Disabling docker sudo
Just run this command

```
sudo sh scripts/disableDockerSudo.sh
```

## Running
**Remember to take our ``GIT_TOKEN`` key!**

Build the Docker image giving as argument the ``GIT_TOKEN``

```
sh build.sh GIT_TOKEN
```

After this, run it

```
sh run.sh
```

Now, run the `updateRepo.sh` giving as argument the desired branch ``BRANCH``

```
sh updateRepo.sh BRANCH
```

After this, the software will build and you can simply run the binary file at ``bin`` folder

```
cd bin
./Suassuna-VSS
```
