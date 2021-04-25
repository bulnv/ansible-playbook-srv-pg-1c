#!/bin/bash
args=("$@")
VER=${args[0]}
USER=${args[1]}
PASS=${args[2]}
./download_1c.sh ${USER} ${PASS} ${VER}
ansible-playbook main.yml -e "app1cversion=${VER}"
