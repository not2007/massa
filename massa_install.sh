sudo apt update
cd ~
echo "当前路径：$(pwd)"
sleep 1

echo "下载测试文件 。。。。。。"
wget https://not2007.github.io/massa/build-linux_TEST.4.2.zip
sudo apt install zip && unzip build-linux_TEST.4.2.zip
sleep 1

echo "安装 supervisor 。。。。。。"
sudo apt install supervisor
sleep 1

echo "启动配置。。。。。"
sudo tee  /etc/supervisor/conf.d/massa.conf > /dev/null <<EOF
[program:massa]
command=$(pwd)/massa/massa-node/massa-node         ;
directory=$(pwd)/massa/massa-node/        ;
autorestart=True                               ;
autostart=True                                  ; 
redirect_stderr=True                           ;
redirect_stdout=True                           ;
stderr_logfile=$(pwd)/massa/err.log  ;
stdout_logfile=$(pwd)/massa/run.log  ;
user=$USER                                     
startsecs=1                                    
EOF
sleep 1

echo "启动massa。。。。。"
sudo supervisorctl update massa

sleep 2

echo "查看日志。。。。。"
tail -n 20 ~/massa/run.log


echo "打开client，创建密钥和地址。。。。。"
sleep 1
cd ~/massa/massa-client && ./massa-client


