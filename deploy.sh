#! /bin/bash

ansible-playbook \
  --connection=local \
  --extra-vars='@project.json' \
  -bi inventory.ini \
  deploy.yml
