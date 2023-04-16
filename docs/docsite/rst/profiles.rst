Profiles
========

.. contents::
  :local:
  :depth: 1

Description
-----------

Playbooks will download and apply user profiles if ``profile`` variable is present. The default profile is sourced from ``profiles/$USER/$PLAYBOOK`` (``trunk`` branch).

.. code-block:: sh

    ansible-playbook charlesrocket.freebsd.station -e "profile=charlesrocket"

Add ``profile_version`` variable to use a custom profile version (``profiles/$USER/$PROFILE_VERSION``).
