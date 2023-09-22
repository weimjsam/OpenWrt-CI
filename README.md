# OpenWrt云编译

#### 官方仓库 https://github.com/openwrt/openwrt
#### 天灵仓库 https://github.com/immortalwrt/immortalwrt
#### 大雕仓库 https://github.com/coolsnowwolf/lede

### 把本仓库克隆到自己的仓库里
#### 打开下面链接生成.config配置文件
#### [https://hackyes.github.io/openwrt-menuconfig/index.html](https://hackyes.github.io/openwrt-menuconfig/index.html)
 没有你的机型？直接github搜索你的型号，找到大佬制作好的.config，复制里面内容，在以上源码文件夹里新建一个你的机型文件夹，再新建一个文件.config，将刚刚复制的.config内，再参照其他型号里的新建两个diy脚本
 再去.github/workflows文件夹里新建一个你的机型的工作流yml，直接复制其他源码工作流里的内容即可，修改里面的机型的为你的，如openwrt的源码工作流里的 name: openwrt-K2P 改为你的name: openwrt-你的机型，
 CONFIG_FILE: openwrt/K2P/.config  三个配置文件也改为你的 CONFIG_FILE: openwrt/你新建的机型/.config ， echo "release_tag=${{ env.FILE_DATE }}-openwrt-K2P" >> $GITHUB_OUTPUT 这行也改
 你的 echo "release_tag=${{ env.FILE_DATE }}-openwrt-你的机型" >> $GITHUB_OUTPUT  ， name: ${{ env.FILE_DATE }}-openwrt-K2P 也改为你的机型 name: ${{ env.FILE_DATE }}-openwrt-你的机型
 GITHUB_TOKEN: ${{ secrets.c8 }} github发布的token值改为你的 GITHUB_TOKEN: ${{ secrets.你的token }}

#### 编辑源码里面机型文件夹里的.config 文件，把内容清空替换成上面链接生成的配置内容
#### 自定义设置 更改参数 添加软件等 编辑源码里面机型文件夹里的diy-part1.sh和diy-part2.sh

### 点这右上角 ✰Star  变成 ★Unstar 即可开始编译

### 默认登陆IP 192.168.1.1 账户密码详见以上官方源码默认

### 等待编译成功后，到Actions里下载固件即可
### yml克隆于 https://github.com/lgs2007m/Actions-OpenWrt
