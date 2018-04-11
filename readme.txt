全局配置文件
    inventory.ini
安装文件存放目录 ./roles/download/
 
1 mysql5.7 安装
##配置文件 ./roles/mysql57_install/vars/main.yml
    ansible-playbook -i inventory.ini mysql57_install.yml  -k
2 mysql5.6 安装
##配置文件 ./roles/mysql56_install/vars/main.yml
    ansible-playbook -i inventory.ini mysql56_install.yml  -k
3 初始化linux系统
    ansible-playbook -i inventory.ini init_system.yml -k
4 安装zabbix agent
    ansible-playbook -i inventory.ini mysql57_install.yml -t zabbixinstall -k
