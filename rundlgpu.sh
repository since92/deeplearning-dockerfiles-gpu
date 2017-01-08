#! /bin/bash
xhost +;
nvidia-docker run --name dlgpu -ti --rm --privileged \
	--net=host \
	-e DISPLAY -e /tmp/.X11-unix:/tmp/.X11-unix:ro \
	-v /etc/localtime:/etc/localtime:ro \
	-v $(pwd)/dropbox:/root/dropbox/:rw \
	since92/dl:gpu-cuda8.0-cudnn5.0-devel
	/bin/bash

