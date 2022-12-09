# ConfigYourServer (Quickly Config Shell Repositroy)

***ConfigYourServer*** 是服务器快速配置脚本文件仓库，通过执行自动配置脚本快速配置服务器相关应用环境

## 使用方法(How to use)
```
  # 1. git clone 当前项目
  git clone https://github.com/MochenNikolas/ConfigYourServer.git
  
  # 2. 进入对应发行版目录
  cd /ConfigYourServer/[your_linux_type]/[your_release_version]
  
  # 3. 修改脚本文件执行权限
  chmod 777 autoConfig.sh
  
  # 4. 执行脚本文件
  sudo ./autoConfig.sh
```

## 现已支持发行版(Linux Release Supported)
1. Ubuntu - 20.04LTS
2. CentOS - 7

## 现已支持自动配置应用(Applications & Environment Supported)
1. Docker
2. Oracle JDK8（8u131）

