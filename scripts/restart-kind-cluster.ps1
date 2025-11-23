# delete exsisting cluster
kind delete cluster

# create kind cluster
kind create cluster --config ../kubernetes/kind-cluster.yaml

# install ingress controller
helm install haproxy-kubernetes-ingress haproxytech/kubernetes-ingress --create-namespace --namespace haproxy-controller --set controller.service.type=LoadBalancer
