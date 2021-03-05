#!/bin/bash
source ./test.sh
binaries=($(main))
for wrappable in "${binaries[@]}"
#for wrappable in cloud-controller-manager,k8s.gcr.io/debian-base-sw64:0.4.1 kube-apiserver,k8s.gcr.io/debian-base-sw64:0.4.1 kube-controller-manager,k8s.gcr.io/debian-base-sw64:0.4.1 kube-scheduler,k8s.gcr.io/debian-base-sw64:0.4.1 kube-proxy,k8s.gcr.io/debian-iptables-sw64:v11.0.1
do
  oldifs=$IFS
  IFS=","
  set $wrappable
  IFS=$oldifs
  binary_name="$1"
  base_image="$2"
  echo $binary_name
  echo $base_image
  #echo $wrappable
done
