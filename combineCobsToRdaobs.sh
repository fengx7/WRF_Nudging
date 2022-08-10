#!/bin/bash

	obspre="C_OBS:"
	filout="rda_obs"

rm -rf ${filout}
touch ${filout}

for fil in `ls ${obspre}*`
do
	echo "${fil} +> ${filout}"
	cat ${fil} >> ${filout}
done
