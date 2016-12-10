#!/bin/bash
> $1
for policy in $2
do
  export DAN_POLICY=$policy;
  echo $DAN_POLICY
  echo 'policy = '${policy} >> $1
  find /Volumes/Marshal/traces  -name "*.trace" -exec sh -c "./src/efectiu {} | grep IPC >> $1" \;
done
