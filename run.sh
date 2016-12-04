#!/bin/bash
> $1
for policy in 2
do
  export DAN_POLICY=$policy;
  echo $DAN_POLICY
  echo 'policy = '${policy} >> $1
  find ./traces -name "4*.trace" -exec sh -c "./src/efectiu {} | grep IPC >> $1" \;
done
