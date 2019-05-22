###全局配置文件
    inventory.ini
安装文件存放目录 ./roles/download/
 
###1 mysql5.7 安装
```
##配置文件 ./roles/mysql57_install/vars/main.yml
ansible-playbook -i inventory.ini mysql57_install.yml  -k
```
###2 mysql5.6 安装
```
##配置文件 ./roles/mysql56_install/vars/main.yml
ansible-playbook -i inventory.ini mysql56_install.yml  -k
```
###3 mysql8.0 安装
```
##配置文件 ./roles/mysql80_install/vars/main.yml
ansible-playbook -i inventory.ini mysql80_install.yml  -k
```
###4 初始化linux系统
```
ansible-playbook -i inventory.ini init_system.yml -k
```
###5 安装zabbix agent
    ansible-playbook -i inventory.ini mysql57_install.yml -t zabbixinstall -k
```

###备注：
```
如客户端有多个版本python时需设置（ansible_python_interpreter="/usr/bin/python2.6"）
例如ansible-playbook -i inventory.ini mysql80_install.yml  -k -e"ansible_python_interpreter="/usr/bin/python2.6""
```
