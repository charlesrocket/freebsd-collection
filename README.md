# freebsd-collection
[![Ansible collection](https://img.shields.io/ansible/collection/2410)](https://galaxy.ansible.com/charlesrocket/freebsd)
[![CI](https://github.com/charlesrocket/freebsd-collection/actions/workflows/ci.yml/badge.svg)](https://github.com/charlesrocket/freebsd-collection/actions/workflows/ci.yml)

Ansible collection for FreeBSD servers and desktops.

### Install

`requirements.yml`:

```yaml
collections:
  - name: charlesrocket.freebsd
```

### Usage

```yaml
- name: Workstation playbook
  hosts: all

- name: Include playbook - station
  ansible.builtin.import_playbook: charlesrocket.freebsd.station
```

```yaml
- name: Server playbook
  hosts: all

- name: Include playbook - server
  ansible.builtin.import_playbook: charlesrocket.freebsd.server
```

[example variables](https://github.com/charlesrocket/freebsd-collection/tree/trunk/playbooks/vars/charlesrocket)

## Example

<img src="assets/screenshot.png" alt="screenshot" width="900"/>

```sh
# run as user
ansible-galaxy collection install charlesrocket.freebsd
ansible-playbook charlesrocket.freebsd.station -c \
    local -i "localhost," -e "profile=charlesrocket"
```
