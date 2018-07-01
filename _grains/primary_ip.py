#!/usr/bin/env python
import salt.modules.cmdmod

def get_primary_ip():
    grains = {}
    primary_ip = salt.modules.cmdmod.run('ip route get 1 |awk \'{print $NF;exit}\'', python_shell=True)
    grains['primary_ip'] = primary_ip

    return grains
