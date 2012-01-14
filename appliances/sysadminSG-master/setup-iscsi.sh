#!/bin/bash

mkdir /iscsi-targets
for file in $(seq 1 50); do
   dd if=/dev/zero of=/iscsi-target/target-$file
done
chkconfig tgtd on

