#!/bin/bash
	obspre="OBS:"
	sfcpre="SURFACE_OBS:"
	outpre="C_OBS:"

for fil in `ls ${obspre}*`
do
#	echo ${fil}
	datestr=`echo ${fil} | cut -c5-14`
	filsfc="${sfcpre}${datestr}"
	filout="${outpre}${datestr}"
	echo "${fil} + ${filsfc} -> ${filout}"
	cat ${fil} ${filsfc} > ${filout}
done
