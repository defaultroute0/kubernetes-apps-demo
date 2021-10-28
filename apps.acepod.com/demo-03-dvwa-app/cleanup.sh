kubectl delete -f dvwa-app.yaml
kubectl delete -f dvwa-hostrule.yaml
rm -rf dvwa-ingress-tls.key
rm -rf dvwa-ingress-tls.crt
kubectl delete secret dvwa-ingress-tls --namespace dvwa-apps
kubectl delete ns dvwa-apps
