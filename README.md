### zabbix-raspberry

#### howto
  * put user zabbix in group video `sudo usermod -a -G video zabbix`
  * put check_raspberry.sh to /usr/local/share/zabbix/externalscripts
  * change privileges to 755 `sudo chmod 755 /usr/local/share/zabbix/externalscripts/check_raspberry.sh`
  * import Template-Raspberry.xml in Zabbix Templates
  * edit /usr/local/etc/zabbix_agentd.conf and add this UserParameter: `UserParameter=check_raspberry.sh[*],/usr/local/share/zabbix/externalscripts/check_raspberry.sh $1` 

#### todo's
  * check CPU Clock Speed
  * check CPU Voltage
