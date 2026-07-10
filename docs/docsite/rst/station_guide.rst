Station
=======

.. contents::
  :local:
  :depth: 1

Usage
-----

.. code-block:: yaml

    - name: Workstation playbook
      hosts: all

    - name: Include playbook | station
      ansible.builtin.import_playbook: charlesrocket.freebsd.station

Variables
---------

`Example variables <https://codeberg.org/charlesrocket/freebsd-collection.profiles/src/branch/trunk/charlesrocket/station.yml>`_
