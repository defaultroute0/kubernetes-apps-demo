openssl req -x509 -nodes -days 365 \
-newkey rsa:2048 \
-out hello-ingress-tls.crt \
-keyout hello-ingress-tls.key \
-subj "/CN=hello.lb.lab01.one/O=hello-ingress-tls"
kubectl create secret tls hello-ingress-tls --key hello-ingress-tls.key --cert hello-ingress-tls.crt

