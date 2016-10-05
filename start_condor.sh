#!/bin/bash

ansible nodes --u root --ask-pass -m shell -a "source ~condor/condor/condor.sh && condor_master && ps aux | grep condor"