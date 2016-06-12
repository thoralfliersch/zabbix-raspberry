### zabbix-raspberry

#### howto
  * put user zabbix in group video `sudo usermod -a -G video zabbix`
  * put check_raspberry.sh to /usr/local/share/zabbix/externalscripts
  * change privileges to 755 `sudo chmod 755 /usr/local/share/zabbix/externalscripts/check_raspberry.sh`
  * import Template-Raspberry.xml in Zabbix Templates

#### todo's
  * check CPU Clock Speed
  * check CPU Voltage
