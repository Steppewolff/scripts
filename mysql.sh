sudo apt update
sudo apt install mysql-server
sudo mysql_secure_installation
#Establecer contraseña root

sudo mysql
#Crear usuario no root para uso diario
mysql> SELECT user,authentication_string,plugin,host FROM mysql.user;
mysql> ALTER USER 'root'@'localhost' IDENTIFIED WITH caching_sha2_password BY 'password';
mysql> FLUSH PRIVILEGES;
mysql> SELECT user,authentication_string,plugin,host FROM mysql.user;
mysql> sudo mysql
mysql> CREATE USER 'sammy'@'localhost' IDENTIFIED BY 'password';
mysql> GRANT ALL PRIVILEGES ON *.* TO 'sammy'@'localhost' WITH GRANT OPTION;

#Instalar MySQL Workbench
sudo snap install mysql-workbench-community

#Probar a ejecutar Workbench, sino comprobar permisos de root
sudo mysql -u root -p

mysql> use mysql
mysql> SELECT User, Host, plugin FROM mysql.user;
mysql> UPDATE user SET plugin='mysql_native_password' WHERE User='root';
mysql> FLUSH PRIVILEGES;
