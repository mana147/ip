#!/bin/bash

# Lấy thông tin IP từ ipinfo.io/ip
ip=$(curl -s ipinfo.io/ip)

# Ghi thông tin IP vào file ip.log, kèm dấu xuống dòng
echo $ip >> /home/nevermore/Project/ip/log.txt

cd /home/nevermore/Project/ip
 
# Thực hiện các lệnh Git
# Thực hiện git add -A và kiểm tra xem lệnh có thành công không
if git --git-dir=.git add -A; then
    echo "Lệnh 'git add' đã được thực thi thành công." >> /home/nevermore/Project/ip/log.txt
else
    echo "Lỗi khi thực thi lệnh 'git add'." >> /home/nevermore/Project/ip/log.txt
    exit 1 >> /home/nevermore/Project/ip/log.txt
fi

# Thực hiện git commit và kiểm tra xem lệnh có thành công không
if  git --git-dir=.git commit -m "update"; then
    echo "Lệnh 'git commit' đã được thực thi thành công." >> /home/nevermore/Project/ip/log.txt
else
    echo "Lỗi khi thực thi lệnh 'git commit'." >> /home/nevermore/Project/ip/log.txt
    exit 1 >> /home/nevermore/Project/ip/log.txt
fi

# Thực hiện git push và kiểm tra xem lệnh có thành công không
if git --git-dir=.git push; then
    echo "Lệnh 'git push' đã được thực thi thành công." >> /home/nevermore/Project/ip/log.txt
else
    echo "Lỗi khi thực thi lệnh 'git push'." >> /home/nevermore/Project/ip/log.txt
    exit 1 >> /home/nevermore/Project/ip/log.txt
fi
