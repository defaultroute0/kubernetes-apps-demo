k expose deployments/dvwa-apps --type=LoadBalancer --target-port=80 --port=8080 --name=dvwa-apps --external-ip=172.16.10.51


## DVWA Testing

https://docs.hol.vmware.com/HOL-2021/hol-2137-03-net_html_en/

SQL Injection
%' or 0=0 union select null, version() #

Cross Site Scripting - XSS (Stored)
<script>alert("XSS Exploit Test")</script>
