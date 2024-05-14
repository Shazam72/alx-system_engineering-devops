#!/usr/bin/env bash
# create tyrell_corp database and replica user
cmds=(
	"CREATE DATABASE tyrell_corp"
	"use tyrell_corp"
	"CREATE TABLE nexus6(id VARCHAR(255), name VARCHAR(255))"
	"INSERT INTO nexus6 (id, name) VALUES (1,' Leon');"
	"GRANT SELECT ON tyrell_corp.* TO 'holberton_user'@'localhost'"
	"CREATE USER 'replica_user'@'%' IDENTIFIED BY 'password'"
	"GRANT REPLICATION SLAVE ON *.* TO 'replica_user'@'%'"
	"GRANT SELECT ON mysql.user TO 'holberton_user'@'localhost'"
)
all_cmds=""
for cmd in "${cmds[@]}"
do
	all_cmds+="$cmd;"
done
sudo mysql -uroot -p -e "$all_cmds"
