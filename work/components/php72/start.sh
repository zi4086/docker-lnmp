#!/bin/bash

set -x

# 保存环境变量，使容器内正常显示中文
env >> /etc/default/locale

# 开启crontab服务
/etc/init.d/cron start

# 运行 php-fpm
php-fpm