#!/bin/bash
mysqldump  -uzabbix -pzabbix  --host=localhost --databases zabbix > /home/sql_backup/Zabbix_BAK_$(date +%Y)$(date +%m)$(date +%d).sql
