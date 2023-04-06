Profiles
========

.. contents::
  :local:
  :depth: 1

Description
-----------

Playbooks will download and apply user profiles if ``profile`` variable is present. The profile is sourced from ``profiles/$USER/$PLAYBOOK`` (``trunk`` branch).

.. code-block:: sh

    ansible-playbook charlesrocket.freebsd.station -e "profile=charlesrocket"
