#!/usr/bin/env bash
# create a user named holberton_user and grants him replication checks permissions
sudo mysql -uroot -p -e "CREATE USER 'holberton_user'@'localhost' IDENTIFIED BY 'projectcorrection280hbtn'; GRANT REPLICATION CLIENT ON *.* TO 'holberton_user'@'localhost';"
