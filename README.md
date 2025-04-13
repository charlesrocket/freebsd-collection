# freebsd-collection
[![galaxy](https://img.shields.io/badge/dynamic/json?style=flat&label=galaxy&prefix=v&url=https://galaxy.ansible.com/api/v3/collections/charlesrocket/freebsd/&query=highest_version.version)](https://galaxy.ansible.com/ui/repo/published/charlesrocket/freebsd/)
[![CI](https://github.com/charlesrocket/freebsd-collection/actions/workflows/ci.yml/badge.svg)](https://github.com/charlesrocket/freebsd-collection/actions/workflows/ci.yml)

Ansible collection for FreeBSD servers and desktops.

## Installation
### CLI

``` sh
ansible-galaxy collection install charlesrocket.freebsd
```

#### Upgrade

``` sh
ansible-galaxy collection install charlesrocket.freebsd --upgrade
```

### YAML

`requirements.yml`:

```yaml
collections:
  - name: charlesrocket.freebsd
```

## Usage

See [profiles](https://charlesrocket.github.io/freebsd-collection/docsite/profiles)/[variables](https://github.com/charlesrocket/freebsd-collection_profiles/tree/trunk/charlesrocket).

## Example

<img src="https://raw.githubusercontent.com/charlesrocket/freebsd-collection/refs/heads/trunk/assets/station.png" alt="screenshot" width="900"/>

```sh
# run as user
ansible-playbook charlesrocket.freebsd.station -c \
    local -i "localhost," -e "profile=charlesrocket"
```
