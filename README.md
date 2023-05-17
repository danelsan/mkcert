# Tools mkcert for docker application

Use mkcert for development with cerification

## Building images

Simple run:

./build.sh

## How to use it

For create certification and RootCA write:

	``docker run --rm --name mkcert -v $PWD:/root/.local/share/mkcert danelsan/mkcert:latest  /bin/sh -c "mkcert -install &&  mkcert -cert-file /root/.local/share/mkcert/mkcert-test.pem   -key-file /root/.local/share/mkcert/mkcert-test.key  'registry.test.test' '*.test.test' localhost 127.0.0.1 ::1"``
	

## Where Put Certificates

Installing the CA on other systems

Installing in the trust store does not require the CA key, so you can export the CA certificate and use mkcert to install it in other machines.

    Look for the rootCA.pem file in mkcert -CAROOT
    copy it to a different machine
    set $CAROOT to its directory
    run mkcert -install

Remember that mkcert is meant for development purposes, not production, so it should not be used on end users' machines, and that you should not export or share rootCA-key.pem.

## Source mkcert

For source of mkcert look at:

https://github.com/FiloSottile/mkcert


