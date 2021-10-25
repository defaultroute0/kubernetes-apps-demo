kubectl create ns dvwa-apps
openssl req -x509 -nodes -days 365 \
-newkey rsa:2048 \
-out dvwa-ingress-tls.crt \
-keyout dvwa-ingress-tls.key \
-subj "/CN=dvwa.lb.lab01.one/O=dvwa-ingress-tls"
kubectl create secret tls dvwa-ingress-tls --namespace dvwa-apps --key dvwa-ingress-tls.key --cert dvwa-ingress-tls.crt

