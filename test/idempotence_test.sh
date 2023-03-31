#!/bin/sh

idempotence_test=$(mktemp)

ansible-galaxy collection build
ansible-galaxy collection install \
    charlesrocket-freebsd-$(grep version galaxy.yml | awk '{print $2}').tar.gz

ansible-playbook charlesrocket.freebsd.station -c \
    local -i "localhost," -e "profile=charlesrocket" \
    -e "@test/config.yml"

ansible-playbook charlesrocket.freebsd.station -c \
    local -i "localhost," -e "profile=charlesrocket" \
    -e "@test/config.yml" | tee -a ${idempotence_test}

tail ${idempotence_test} | grep -q 'changed=0.*failed=0' \
    && (echo 'Idempotence test: pass' && exit 0) \
    || (echo 'Idempotence test: fail' && exit 1)
