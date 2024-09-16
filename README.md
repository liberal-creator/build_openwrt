<img width="768" src="https://raw.githubusercontent.com/ffuqiangg/build_openwrt/main/img/phicomm-n1.jpg" align="center">

##

本项目用于编译打包 `斐讯N1` 使用的 `ImmortalWrt`固件。

### 说明

- 由于仓库的代码大部分时间都处于不可用的状态，所以并不建议 fork 使用。除非能够自行排查和修复错误。
- 默认 IP：192.168.1.3，  默认密码：password
- 插件包含：PassWall，OpenClash，Homeproxy，v2rayA，硬盘休眠，FileBrowser，网络共享，FTP服务器，DockerMan，DocKer Compose，UPNP，DAED，DAED-Next
- 固件对一些命令进行了简化，如 `ungz = tar -xvzf`，`777 = chmod -R 777`，`mkdirg = 创建并进入目录`，`bd = 回到之前目录` 等，详情可查看仓库 patch/files/etc/shinit 文件。
- 在终端里输入命令起始部分再通过键盘 `↑ ↓` 可以匹配执行过的历史命令快速输入。
- 如果你在使用 docker 等内存占用较大的应用时，觉得当前盒子的内存不够使用，可以创建 swap 虚拟内存，将 /mnt/mmcblk2p4 磁盘空间的一定容量虚拟成内存来使用。通过命令 `openwrt-swap` 创建 swap，默认大小为 1GB 也可以手动设置 swap 大小，命令为 `openwrt-swap N` N 为希望的 swap 大小数字，单位 GB。
- 刷机方法：将固件写入U盘，插入设备并从U盘启动。进入终端输入命令 `openwrt-install-amlogic` 然后根据屏幕提示完成刷机。
- 升级固件/内核：将固件/内核文件（内核文件须包含 `dtb-xxx.tar.gz`, `modules-xxx.tar.gz`, `boot-xxx.tar.gz` 文件）放入 `/mnt/mmcblk2p4` 目录，终端输入命令 `openwrt-update-amlogic` 升级固件，`openwrt-kernel` 升级内核。
> [!TIP]
> OpenWrt 23.05 纯 Sing-Box 核心使用方法阅读 [sing-Box 使用文档](docs/sing-box.md)，LEDE，ImmortalWrt 18.06 固件使用 Sing-Box 裸跑可到 Telegram 频道下载替换文件。

### 感谢

- 本项目固件编译方法来自于 [P3TERX](https://p3terx.com) 的 [Actions-OpenWrt](https://github.com/P3TERX/Actions-OpenWrt) 项目。
- 固件打包解决方案以及面向路由优化的内核源码源自 [Flippy](https://github.com/unifreq) 大佬的多个开源项目。
- shell 脚本参考了爆操老哥 [Breakings](https://github.com/breakings) 及 [YAOF](https://github.com/QiuSimons/YAOF) 项目的代码。
- 感谢 [Immortalwrt](https://github.com/immortalwrt/immortalwrt)等项目对开源路由的贡献。
