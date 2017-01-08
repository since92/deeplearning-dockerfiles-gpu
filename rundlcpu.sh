#! /bin/bash
docker run --name dlcpu -ti --rm --net host --privileged \
	-v /dev/bus/usb:/dev/bus/usb -v ~/.gradle:/root/.gradle \
	-v $(pwd):/workspace:rw \
	since92/dl:cpu \
	/bin/bash
