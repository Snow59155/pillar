#!/bin/bash

if [[ ${FULL} == "true" ]];
then
	${__dir}/buildPillar.sh
else
	wget https://raw.githubusercontent.com/pillar-markup/pillar/master/download.sh
	chmod +x download.sh
	./download.sh -p ${PHARO_VERSION}
fi