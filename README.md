# Get ip server :


Crontab : 

```bash
* * * * * sh /root/ip/get_ip.sh
```

Git :

Sử dụng Git Credential Helper
Nếu bạn không muốn nhập thông tin đăng nhập mỗi lần đẩy thay đổi lên repository, 
bạn có thể cấu hình Git Credential Helper để lưu trữ thông tin đăng nhập.
Chạy lệnh sau để lưu thông tin đăng nhập Git:
```bash
git config --global credential.helper store 
``` 

Lần đầu tiên thực hiện git push, Git sẽ yêu cầu bạn nhập username và password. Sau đó, thông tin này sẽ được lưu và sử dụng tự động cho những lần đẩy tiếp theo mà không cần nhập lại.


