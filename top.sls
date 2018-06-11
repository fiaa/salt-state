#
# This is used by saltstack.
#
base:
  '*':
    - common
    - salt.minion
    - salt.pkgrepo

  'G@roles:salt_master':
    - salt.master
    - salt.ssh
