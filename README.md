# OpenWrt云编译

#### 官方仓库 https://github.com/openwrt/openwrt
#### 天灵仓库 https://github.com/immortalwrt/immortalwrt
#### 大雕仓库 https://github.com/coolsnowwolf/lede

### 把本仓库克隆到自己的仓库里
#### 打开下面链接生成.config配置文件
#### [https://hackyes.github.io/openwrt-menuconfig/index.html](https://hackyes.github.io/openwrt-menuconfig/index.html)
#### 编辑源码里面机型文件夹里的.config 文件，把内容清空替换成上面链接生成的配置内容
#### 自定义设置 更改参数 添加软件等 编辑源码里面机型文件夹里的diy-part1.sh和diy-part2.sh


### 在Actions里选择你想要的源码机型 点击 再workflows 即可开始编译

### 默认登陆IP 192.168.1.1 账户密码详见以上官方源码默认

### 等待编译成功后，到Actions里下载固件即可
### yml克隆于 https://github.com/lgs2007m/Actions-OpenWrt
### 插件仓库 https://github.com/kenzok8/openwrt-packages
