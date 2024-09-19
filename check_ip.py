import subprocess

# Lệnh curl để lấy thông tin IP từ ipinfo.io/ip
command = "curl ipinfo.io/ip"

# Sử dụng subprocess để chạy lệnh curl và lấy đầu ra
result = subprocess.run(command, shell=True, capture_output=True, text=True)


# Ghi thêm đầu ra (kèm dấu xuống dòng) vào tệp ip.log
with open("ip.log", "a") as log_file:
    log_file.write(result.stdout.strip() + "\n")

result.stdout.strip()

# Thực hiện các lệnh git add, commit, và push
git_commands = """
git add -A && git commit -m "update" && git push
"""
# Thực thi các lệnh git
subprocess.run(git_commands, shell=True, capture_output=True, text=True)


