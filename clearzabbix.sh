#!/bin/bash
#清理zabbix 30天之前的历史数据
User="zabbix"

Passwd="zabbix"

HIS_Date=`date -d $(date -d "-30 day" +%Y%m%d) +%s` #取30天之前的时间戳

TRE_Date=`date -d $(date -d "-30 day" +%Y%m%d) +%s` #取30天之前的时间戳

$(which mysql) -u${User} -p${Passwd} -e "

use zabbix;

DELETE FROM history WHERE 'clock' < $HIS_Date;

optimize table history;

DELETE FROM history_str WHERE 'clock' < $HIS_Date;

optimize table history_str;

DELETE FROM history_uint WHERE 'clock' < $HIS_Date;

optimize table history_uint;

DELETE FROM trends WHERE 'clock' < $TRE_Date;

optimize table trends;

DELETE FROM trends_uint WHERE 'clock' < $TRE_Date;

optimize table trends_uint;

DELETE FROM events WHERE 'clock' < $TRE_Date;

optimize table events;
"
