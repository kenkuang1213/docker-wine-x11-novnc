#!/bin/bash

if [ ! -f /etc/ssh/ssh_host_rsa_key ] ; then
# Generate ssh key
    ssh-keygen -N '' -t rsa -f /etc/ssh/ssh_host_rsa_key
    ssh-keygen -N '' -t dsa -f /etc/ssh/ssh_host_dsa_key
    ssh-keygen -N '' -t ecdsa -f /etc/ssh/ssh_host_ecdsa_key
fi
/usr/bin/supervisord
