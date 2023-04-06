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

`Example variables <https://github.com/charlesrocket/freebsd-collection/blob/trunk/profiles/charlesrocket/server.yml>`_
