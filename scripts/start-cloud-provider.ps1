# build the cloud provider docker image
# docker build -t cloud-provider-kind ../cloud-provider-kind

# run the image
docker run --rm --network kind -v /var/run/docker.sock:/var/run/docker.sock cloud-provider-kind
