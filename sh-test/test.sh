#!/bin/bash
main(){
local arch=sw64
local debian_base_version=0.4.1
local debian_iptables_version=v11.0.1
local targets=(
    cloud-controller-manager,"k8s.gcr.io/debian-base-${arch}:${debian_base_version}"
    kube-apiserver,"k8s.gcr.io/debian-base-${arch}:${debian_base_version}"
    kube-controller-manager,"k8s.gcr.io/debian-base-${arch}:${debian_base_version}"
    kube-scheduler,"k8s.gcr.io/debian-base-${arch}:${debian_base_version}"
    kube-proxy,"k8s.gcr.io/debian-iptables-${arch}:${debian_iptables_version}"
)
echo "${targets[@]}"
}
