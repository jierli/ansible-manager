#!/usr/bin/env python
import time
import copy
import json
import os

def get_serverid(ip, port, **kw):
    ip = ''.join(ip)
    port = ''.join(str(port))
    serverid = '%s%s%s' % (port[-3:],ip.split('.')[2].zfill(3), ip.split('.')[3].zfill(3))
    return serverid

def get_mgrname(ip):
    ip = ''.join(ip)
    mgrname = '%s%s%s%s' % (
    ip.split('.')[0].zfill(3), ip.split('.')[1].zfill(3), ip.split('.')[2].zfill(3), ip.split('.')[3].zfill(3))
    return mgrname

class FilterModule(object):
    def filters(self):
        return {
            'get_serverid': get_serverid,
            'get_mgrname': get_mgrname,
        }

if __name__ == '__main__':
    a = get_serverid('1.1.1.1','3306')
    print a
