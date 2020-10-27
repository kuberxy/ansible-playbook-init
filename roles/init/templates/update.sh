#! /bin/bash

ansible-playbook -bi inventory.ini update.yml -e ns_dest=${1:-localhost}
