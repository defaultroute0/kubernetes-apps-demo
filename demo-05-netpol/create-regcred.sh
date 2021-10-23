docker login
kubectl -n yelb create secret generic regcred \
--from-file=.dockerconfigjson=/root/.docker/config.json \
--type=kubernetes.io/dockerconfigjson
kubectl -n yelb patch serviceaccount default -p '{"imagePullSecrets": [{"name": "regcred"}]}'

