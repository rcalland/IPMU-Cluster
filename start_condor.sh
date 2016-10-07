#!/bin/bash

condor_off -all
condor_master

condor_cmd="source ~condor/condor/condor.sh && condor_master && ps aux | grep condor_master"

ansible centos6_nodes --u root --ask-pass -m shell -a ${condor_cmd}
ansible centos7_nodes --u root --ask-pass -m shell -a ${condor_cmd}
