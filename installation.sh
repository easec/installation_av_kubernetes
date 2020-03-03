#!/bin/bash

echo -n "Hämtar signeringsnyckel"

curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -

echo -n "Lägger till referenser"
sudo apt-add-repository "deb http://apt.kubernetes.io/ kubernetes-xenial main"

echo -n "Uppdaterar referenser"
sudo apt-get update

echo -n "Installerar kubeadmin, kubelet och kubectl"

sudo apt-get install -y kubeadm kubelet kubectl


echo -n "Markerar att kubeadmin, kubelet och kubectl inte uppdateras"

sudo apt-mark hold kubeadm kubelet kubectl
