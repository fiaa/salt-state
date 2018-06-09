#
# This is used by saltstack.
#
base:
  '*':
    - common
    - salt.minion

  'G@roles:salt_master':
    - salt.master
    - salt.ssh
