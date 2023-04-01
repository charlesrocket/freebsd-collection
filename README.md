# freebsd-collection
[![Ansible Lint](https://github.com/charlesrocket/freebsd-collection/workflows/Ansible%20Lint/badge.svg)](https://github.com/charlesrocket/freebsd-collection/actions)
[![Build Status](https://api.cirrus-ci.com/github/charlesrocket/freebsd-collection.svg?branch=master)](https://cirrus-ci.com/github/charlesrocket/freebsd-collection)

![screenshot](screenshot.png)

**FreeBSD** station

```sh
# configure doas
echo "permit nopass keepenv $USER" > /usr/local/etc/doas.conf
# run as user
curl https://raw.githubusercontent.com/charlesrocket/freebsd-station/master/bootstrap | sh
```
🚧
