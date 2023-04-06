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

`Example variables <https://github.com/charlesrocket/freebsd-collection/blob/trunk/profiles/charlesrocket/station.yml>`_
