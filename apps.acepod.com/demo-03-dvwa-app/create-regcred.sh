docker login
kubectl -n dvwa-apps create secret generic regcred \
--from-file=.dockerconfigjson=/root/.docker/config.json \
--type=kubernetes.io/dockerconfigjson
kubectl -n dvwa-apps patch serviceaccount default -p '{"imagePullSecrets": [{"name": "regcred"}]}'

