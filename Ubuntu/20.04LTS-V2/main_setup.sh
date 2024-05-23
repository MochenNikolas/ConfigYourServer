#!/bin/bash

# 作者: Mochen
# 最后更新时间: 2024/05/23
# 该脚本适用于 [Ubuntu 20.04LTS]

function log() {
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $@"
}

# 加载配置文件
source config.sh

# 更新 apt 包索引
sudo apt-get update -y

# 定义服务名称数组和相应的脚本路径数组
SERVICES=("JDK" "Docker" "Redis" "RabbitMQ" "MySQL")
SCRIPT_PATHS=("$JDK_SCRIPT_PATH" "$DOCKER_SCRIPT_PATH" "$REDIS_SCRIPT_PATH" "$RABBITMQ_SCRIPT_PATH" "$MYSQL_SCRIPT_PATH")

# 循环处理每个服务
for i in "${!SERVICES[@]}"; do
    SERVICE="${SERVICES[$i]}"
    SCRIPT_PATH="${SCRIPT_PATHS[$i]}"
    
    # 动态检查是否安装服务的变量名
    INSTALL_VAR="INSTALL_${SERVICE^^}"  # 转换为大写，例如 "INSTALL_JDK"
    
    # 检查配置文件中的安装变量是否为 true
    if [ "${!INSTALL_VAR}" = true ]; then
        log "开始运行 $SCRIPT_PATH..."
        if [ -f "$SCRIPT_PATH" ]; then
            sudo $SCRIPT_PATH
            log "完成运行 $SCRIPT_PATH。"
        else
            log "未找到脚本 $SCRIPT_PATH。跳过。"
        fi
    fi
done

log "所有中间件服务安装完成。"
