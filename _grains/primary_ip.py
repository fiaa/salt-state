#!/usr/bin/env python
import salt.modules.cmdmod

COMMAND = 'ip route get 1'
def get_primary_ip():
    grains = {}
    output = salt.modules.cmdmod.run(COMMAND, python_shell=True)
    output = output.split()
    grains['primary_net'] = output[4]
    grains['primary_ip'] = output[6]

    return grains
