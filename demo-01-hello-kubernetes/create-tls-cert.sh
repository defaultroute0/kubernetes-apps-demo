openssl req -x509 -nodes -days 900 \
-newkey rsa:2048 \
-out hello-ingress-tls-sitea.crt \
-keyout hello-ingress-tls-sitea.key \
-subj "/CN=hellositea.vcnlab01.eng.vmware.com/O=hello-ingress-tls-sitea"
kubectl create secret tls hello-ingress-tls-sitea --key hello-ingress-tls-sitea.key --cert hello-ingress-tls-sitea.crt -n hello
#
openssl req -x509 -nodes -days 900 \
-newkey rsa:2048 \
-out hello-ingress-tls-siteb.crt \
-keyout hello-ingress-tls-siteb.key \
-subj "/CN=hellositeb.vcnlab01.eng.vmware.com/O=hello-ingress-tls-siteb"
kubectl create secret tls hello-ingress-tls-siteb --key hello-ingress-tls-siteb.key --cert hello-ingress-tls-siteb.crt -n hello
