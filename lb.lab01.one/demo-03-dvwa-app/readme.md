k expose deployments/dvwa-apps --type=LoadBalancer --target-port=80 --port=8080 --name=dvwa-apps --external-ip=172.16.10.51
