#!/bin/bash
rm -rf log_list
for log in `echo $1/data/runtime/Logs/Admin/{19..20}_{01..09}_{01..31}.log`;do echo $log >> log_list
done
for target in `cat log_list`
do
	echo $target
	wget $target
done
