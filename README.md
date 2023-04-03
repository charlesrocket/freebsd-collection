# freebsd-collection
[![CI](https://github.com/charlesrocket/freebsd-collection/actions/workflows/ci.yml/badge.svg)](https://github.com/charlesrocket/freebsd-collection/actions/workflows/ci.yml)

Ansible collection for FreeBSD servers and desktops.

### Install

`requirements.yml`:

```
collections:
  - name: charlesrocket.freebsd
```

### Usage

```yaml
- name: Example playbook
  hosts: all

- name: Include playbook - station
  ansible.builtin.import_playbook: charlesrocket.freebsd.station
```

[example variables](https://github.com/charlesrocket/freebsd-collection/tree/master/playbooks/vars/charlesrocket)

## Example

**FreeBSD** station

<img src="assets/screenshot.png" alt="screenshot" width="900"/>

```sh
# configure doas
echo "permit nopass keepenv $USER" > /usr/local/etc/doas.conf
# run as user
curl https://raw.githubusercontent.com/charlesrocket/freebsd-station/master/bootstrap | sh
```
