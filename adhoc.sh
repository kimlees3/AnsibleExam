#!/bin/bash
ansible all -m ansible.builtin.yum_repository \
-a 'file=Mybase name=MyBase description="base software" baseurl=http://192.168.10.10/pkg/BaseOS gpgcheck=no enabled=yes'
ansible all -m ansible.builtin.yum_repository \
-a 'name=MyAppStream description="Appstream software" baseurl=http://192.168.10.10/pkg/AppStream/ gpgcheck=no enabled=yes'
