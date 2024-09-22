#!/bin/bash

# Lấy thông tin IP từ ipinfo.io/ip
ip=$(curl -s ipinfo.io/ip)

# Ghi thông tin IP vào file ip.log, kèm dấu xuống dòng
echo $ip >> /home/nevermore/Project/ip/log.txt
   
# Thực hiện các lệnh Git
git add -A
git commit -m "update"
git push

