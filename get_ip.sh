#!/bin/bash

# Lấy thông tin IP từ ipinfo.io/ip
ip=$(curl -s ipinfo.io/ip)

# Ghi thông tin IP vào file ip.log, kèm dấu xuống dòng
echo $ip >> /root/ip/log.txt
echo date >> /root/ip/log.txt

cd /root/ip
# Thực hiện các lệnh Git
# Thực hiện git add -A và kiểm tra xem lệnh có thành công không
if git --git-dir=.git add -A; then
    echo "Lệnh 'git add' đã được thực thi thành công." >> /root/ip/log.txt
else
    echo "Lỗi khi thực thi lệnh 'git add'." >> /root/ip/log.txt
    exit 1 >> /root/ip/log.txt
fi

# Thực hiện git commit và kiểm tra xem lệnh có thành công không
if git --git-dir=.git commit -m "update"; then
    echo "Lệnh 'git commit' đã được thực thi thành công." >> /root/log.txt
else
    echo "Lỗi khi thực thi lệnh 'git commit'." >> /root/log.txt
    exit 1 >> /root/ip/log.txt
fi

# Thực hiện git push và kiểm tra xem lệnh có thành công không
if git --git-dir=.git push; then
    echo "Lệnh 'git push' đã được thực thi thành công." >> /root/ip/log.txt
else
    echo "Lỗi khi thực thi lệnh 'git push'." >> /root/ip/log.txt
    exit 1 >> /root/ip/log.txt
fi
