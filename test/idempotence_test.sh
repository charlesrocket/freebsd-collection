#!/bin/sh

idempotence_test=$(mktemp)

ansible-galaxy install -r requirements.yml

ansible-playbook main.yml
ansible-playbook main.yml | tee -a ${idempotence_test}
tail ${idempotence_test} | grep -q 'changed=0.*failed=0' && (echo 'Idempotence test: pass' && exit 0) || (echo 'Idempotence test: fail' && exit 1)
