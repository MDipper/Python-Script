#!/bin/bash
mysqldump  -uroot -ppassword  --host=localhost --all-databases > /home/sql_backup/MySQL_BAK_$(date +%Y)$(date +%m)$(date +%d).sql
