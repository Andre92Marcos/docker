#!/bin/bash

set -e

export ORACLE_HOME=/u01/app/oracle/product/11.2.0/xe
export ORACLE_SID=XE
export PATH=$ORACLE_HOME/bin:$PATH

sed -i -E "s/HOST = [^)]+/HOST = ${HOSTNAME}/g" ${ORACLE_HOME}/network/admin/listener.ora
service oracle-xe start

echo "Database init..."
for f in /etc/entrypoint-initdb.d/*; do
  case "$f" in
    *.sh)  echo "$0: running ${f}"; . "${f}" ;;
    *.sql) echo "$0: running ${f}"; echo "@${f} ;" | sqlplus -S SYSTEM/oracle ;;
    *)     echo "No volume sql script, ignoring ${f}" ;;
  esac
  echo
done
echo "End init."

echo "Oracle started successfully!"
echo "Fixing Password of System user"
echo exit | sqlplus system/oracle@localhost:1521/XE @fixPassword.sql
echo "Password Fixed"
# forever loop just to prevent Docker container to exit, when run as daemon
while true; do sleep 1000; done
