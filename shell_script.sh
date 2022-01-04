#!/bin/sh
IMAGE_NAME="mytree"
minikube start
#minikube start --extra-config=apiserver.runtime-config=apps/v1beta1=true,extensions/v1beta1/deployments=true
eval $(minikube docker-env) 
build() {
  docker build -t $IMAGE_NAME .

  [ $? != 0 ] && \
    error "Docker image build failed !" && exit 100
}
#docker build -t $IMAGE_NAME:latest .
#e start
#minikube image load $IMAGE_NAME
#kubectl run mytree --image=$IMAGE_NAME
kubectl create -f manifest.yml
#--image-pull-policy=Never
sleep1(120)
kubectl get pods -o wide
 
