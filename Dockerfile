# Sử dụng Ubuntu làm base image
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

# Khởi động container và lắng nghe trên cổng 8080
EXPOSE 8080
CMD ["python3", "-m", "http.server", "8080"]
