#!/bin/bash

mkdir /iscsi-targets
for file in $(seq 1 50); do
   dd if=/dev/zero of=/iscsi-targets/target-$file bs=1M count=10
done
chkconfig tgtd on

