#!/bin/bash

ssh-keygen -f "/home/vstk8105/.ssh/known_hosts" -R "192.168.56.101"
ssh-keygen -f "/home/vstk8105/.ssh/known_hosts" -R "192.168.56.102"

vagrant up

ansible-playbook playbook_sql.yml -i INVENTORY
ansible-playbook playbook_webserver.yml -i INVENTORY
ansible-playbook playbook_wordpress.yml -i INVENTORY
