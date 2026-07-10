Server
======

.. contents::
  :local:
  :depth: 1

Usage
-----

.. code-block:: yaml

    - name: Server playbook
      hosts: all

    - name: Include playbook | server
      ansible.builtin.import_playbook: charlesrocket.freebsd.server

Variables
---------

`Example variables <https://codeberg.org/charlesrocket/freebsd-collection.profiles/src/branch/trunk/charlesrocket/server.yml>`_
