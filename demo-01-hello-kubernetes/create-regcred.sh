sudo chown "$USER":"$USER" /home/"$USER"/.docker -R
sudo chmod g+rwx "/home/$USER/.docker" -R
docker login
kubectl create secret generic regcred -n hello \
--from-file=.dockerconfigjson=/home/rdouglas/.docker/config.json \
--type=kubernetes.io/dockerconfigjson
kubectl patch serviceaccount default -n hello -p '{"imagePullSecrets": [{"name": "regcred"}]}'

