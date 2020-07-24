#!/bin/bash                                                                                                                                                                 
hostname
id
TEST_FILE=`shuf -n 1 frame_files_small.txt`
TEST_FILE="/cvmfs/oasis.opensciencegrid.org/ligo/frames/O3/hoft_C01/L1/L-L1_HOFT_C01-12586/L-L1_HOFT_C01-1258614784-4096.gwf"
head -c 1k $TEST_FILE
TEST_FILE=`shuf -n 1 frame_files_small.txt`
head -c 1k $TEST_FILE
