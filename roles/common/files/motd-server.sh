#!/bin/sh

figlet "$(hostname)" | lolcat -f && echo

status="$(sysctl -a | grep -E 'machdep.bootmethod|hw.model|hw.ncpu|hw.realmem|vfs.zfs.version.module|hw.machine_arch|kern.osrevision' | sed \
-e 's/machdep.bootmethod/Boot method/' \
-e 's/hw.model/CPU/' \
-e 's/hw.ncpu/Cores/' \
-e 's/hw.realmem/Memory/' \
-e 's/vfs.zfs.version.module/ZFS version/' \
-e 's/hw.machine_arch/Architecture/' \
-e 's/kern.osrevision/OS revision/')"

printf '%s\n\n' "$status"
