#!/bin/sh

sed -i "s/NAME =.*$/NAME = ${MYSQL_1_ENV_MYSQL_DATABASE}/" /data/gogs/conf/app.ini
echo "${MYSQL_1_ENV_MYSQL_DATABASE}"
sed -i "s/USER =.*$/USER = ${MYSQL_1_ENV_MYSQL_USERNAME}/" /data/gogs/conf/app.ini
echo "${MYSQL_1_ENV_MYSQL_USERNAME}"
sed -i "s/PASSWD =.*$/PASSWD = ${MYSQL_1_ENV_MYSQL_ROOT_PASSWORD}/" /data/gogs/conf/app.ini
echo "${MYSQL_1_ENV_MYSQL_ROOT_PASSWORD}"

