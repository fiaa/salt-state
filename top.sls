#
# This is used by saltstack.
#
base:
  '*':
    - common
    - salt.minion
    #- sensu.client

  'G@roles:salt_master':
    - salt.master
    - salt.ssh

  'G@roles:sensu and G@sensu_roles:server':
    - sensu.server

  'G@roles:sensu and G@sensu_roles:api':
    - sensu.api

  'G@roles:sensu and G@sensu_roles:uchiwa':
    - sensu.uchiwa

  'G@roles:rabbitmq':
    - rabbitmq
