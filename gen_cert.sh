#!/bin/bash 

SUBJECT="/C=US/ST=California/L=Palo Alto/O=Stanford University/OU=FutureData Group/CN=Lambda MITM Proxy"

openssl genrsa -out mitm.key.pem 4096
openssl req -x509 -new -nodes -key mitm.key.pem -sha256 -days 30 -out mitm.ca.pem -subj "$SUBJECT"