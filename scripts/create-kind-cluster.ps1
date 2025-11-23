# create cluster
kind create cluster --config ../kubernetes/kind-cluster.yaml

# install haproxy ingress controller
helm repo add haproxytech https://haproxytech.github.io/helm-charts
helm repo update
helm install haproxy-kubernetes-ingress haproxytech/kubernetes-ingress --create-namespace --namespace haproxy-controller --set controller.service.type=LoadBalancer
