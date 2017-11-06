#! /bin/bash

#天翼校园网网页登录页面地址不变部分
addr="http://enet.10000.gd.cn:10001/qs/index.jsp?wlanacip=61.146.26.191&wlanuserip="
#改变部分
bb=`ifconfig|grep 10.8.*.*|awk '{print $2}'`
#拼接两部分
address=$addr$bb
#用chrome打开,关闭标准错误输出
google-chrome $address 2>/dev/null
echo "恭喜哈哈哈,请进入浏览器登陆"
