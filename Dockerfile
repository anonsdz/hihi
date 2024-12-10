# Sử dụng base image Ubuntu để hỗ trợ apt-get
FROM ubuntu:latest

# Bước 2: Cài đặt các gói cần thiết bao gồm sudo, Python, pip, htop và speedtest-cli
RUN apt-get update && apt-get install -y \
    sudo \
    python3 \
    python3-pip \
    procps \
    htop \
    speedtest-cli \
    && rm -rf /var/lib/apt/lists/*

# Chạy lệnh không làm gì cả khi khởi động container
CMD ["sleep", "infinity"]
