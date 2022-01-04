#!/bin/sh
IMAGE_NAME="mytree"
minikube start
eval $(minikube docker-env) 
build() {
  docker build -t $IMAGE_NAME .

  [ $? != 0 ] && \
    error "Docker image build failed !" && exit 100
}
kubectl create -f manifest.yml
sleep(120)
kubectl get pods -o wide
 
