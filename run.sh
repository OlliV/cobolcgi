#!/bin/bash

apache2ctl start
sleep 1
while ps -p `cat /var/run/apache2/apache2.pid` > /dev/null; do sleep 10; done
