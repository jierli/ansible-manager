CREATE USER work@'10.%' IDENTIFIED WITH 'mysql_native_password' AS '*B14A21BE1448E0688F0DFB5B4D1C1B666B1AC4D7';
GRANT ALL PRIVILEGES ON *.* TO work@'10.%' WITH GRANT OPTION;

CREATE USER canal@'10.%' IDENTIFIED WITH 'mysql_native_password' AS  '*BC517C4630947AD1E8C17097BAAD5F4DDE9B53F6';
GRANT REPLICATION SLAVE,REPLICATION CLIENT,SELECT ON *.* TO canal@'10.%';

CREATE USER sstuser@'localhost' IDENTIFIED WITH 'mysql_native_password' AS  '*38625401D67E7E229F6E15C84204F09DC8292290';
GRANT RELOAD, LOCK TABLES, REPLICATION CLIENT ON *.* TO sstuser@'localhost';

CREATE USER clustercheckuser@'localhost' IDENTIFIED WITH 'mysql_native_password' AS  '*FDC68394456829A7344C2E9D4CDFD43DCE2EFD8F';
GRANT PROCESS,SUPER ON *.* TO clustercheckuser@'localhost';

CREATE USER cactistats@'127.0.0.1' IDENTIFIED WITH 'mysql_native_password' AS  '*78F8487B30773E6A1FA40877123107AC21AE97F1';
GRANT PROCESS, SHOW DATABASES, SUPER ON *.* TO cactistats@'127.0.0.1';
GRANT SELECT ON performance_schema.* TO cactistats@'127.0.0.1';
GRANT SELECT ON `sys`.* TO 'cactistats'@'127.0.0.1';

CREATE USER a10_check_pxc@'10.%' IDENTIFIED WITH 'mysql_native_password' AS  '*78F8487B30773E6A1FA40877123107AC21AE97F1';
GRANT SELECT ON performance_schema.* TO a10_check_pxc@'10.%';

CREATE USER dbms_w@'10.%' IDENTIFIED WITH 'mysql_native_password' AS '*C1A7D9EBCAD83C8C46143724434C5D434F17E190';
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, PROCESS, INDEX, ALTER, SHOW DATABASES, SUPER, SHOW VIEW, TRIGGER,REPLICATION SLAVE ON *.* TO dbms_w@'10.%';
GRANT SELECT ON performance_schema.* TO dbms_w@'10.%';

CREATE USER 'admintools'@'10.%' IDENTIFIED WITH 'mysql_native_password' AS  '*356BA20CA2A6A570F07549392094A7E56B34D66F';
GRANT SELECT ON *.* TO 'admintools'@'10.%';

CREATE USER cactistats@'10.201.3.54' IDENTIFIED WITH 'mysql_native_password' AS  '*78F8487B30773E6A1FA40877123107AC21AE97F1';
GRANT PROCESS, SHOW DATABASES, REPLICATION CLIENT, SHOW VIEW ON *.* TO cactistats@'10.201.3.54';
GRANT SELECT ON performance_schema.* TO cactistats@'10.201.3.54';

CREATE USER 'cactistats'@'10.204.253.%' IDENTIFIED WITH 'mysql_native_password' AS '*78F8487B30773E6A1FA40877123107AC21AE97F1';
GRANT PROCESS ON *.* TO 'cactistats'@'10.204.253.%';
CREATE USER 'cactistats'@'10.204.251.%' IDENTIFIED WITH 'mysql_native_password' AS '*78F8487B30773E6A1FA40877123107AC21AE97F1';
GRANT PROCESS ON *.* TO 'cactistats'@'10.204.251.%';

CREATE USER 'dbms_account'@'10.%' IDENTIFIED WITH 'mysql_native_password' AS '*27F88DAB2FC50C8C2D6EEF6BCA6537798C960584';
GRANT SELECT,INSERT,UPDATE,DELETE ON *.* TO 'dbms_account'@'10.%' WITH GRANT OPTION;
FLUSH PRIVILEGES;

create database backup_tables;
