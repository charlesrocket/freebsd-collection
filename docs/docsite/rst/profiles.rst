Profiles
========

.. contents::
  :local:
  :depth: 1

Description
-----------

Playbooks will download and apply user profiles if ``profile`` variable is present. Profiles are located in the external `repository <https://github.com/charlesrocket/freebsd-collection_profiles/>`_ (``/$USER/$PLAYBOOK``).

.. code-block:: sh

    ansible-playbook charlesrocket.freebsd.station -e "profile=charlesrocket"

Add ``profile_version`` variable to specify a playbook.

Set ``profile`` to an absolute path to load a local profile file (testing, edge cases).
