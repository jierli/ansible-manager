全局配置文件
    inventory.ini
安装文件存放目录 ./roles/download/

1 mysql5.7 安装
##配置文件 ./roless/mysql57/vars/main.yml
    ansible-playbook -i inventory.ini mysql57_install.yml  -k
2 mysql5.6 安装
##配置文件 ./roless/mysql56/vars/main.yml
    ansible-playbook -i inventory.ini mysql56_install.yml  -k