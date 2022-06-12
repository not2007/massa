#!/bin/bash

sudo apt update 
sudo apt install supervisor

MASSA_PATH=$1
if [ ! -n "$MASSA_PATH" ]
then
        MASSA_PATH =~/massa
fi
echo "massa path: $MASSA_PATH"
sleep 1

sudo tee <<EOF >/dev/null /etc/supervisor/conf.d/massa.conf
#!massa
[program:massa]
command=$(MASSA_PATH)/massa-node/massa-node         ;
directory=$(MASSA_PATH)/massa-node/        	;
autorestart=True                               ;
autostart=True                                 ;supervisor 启动后启动
redirect_stderr=True                           ;
redirect_stdout=True                           ;
stderr_logfile=$(MASSA_PATH)/err.log  ;
stdout_logfile=$(MASSA_PATH)/run.log  ;
user=$(USER)                                   ;启动用户
startsecs=4                                    ;启动间隔
EOF

sudo supervisorctl update massa


