echo 开始安装NVidia显卡驱动，如果你是非nvidia用户请停止安装！
sudo dnf install mokutil -y
echo 如果安全启动已经打开（显示为：SecureBoot enabled），请对nvidia驱动进行签名（建议选择：一键安装NVIDIA驱动（最新版本，包含安全启动支持）），否则Evernight Vista仍可以启动，但nvidia驱动会被拒绝加载
mokutil --sb-state
echo 你现在有5秒钟的时间，可以按下Ctrl+C取消本次安装nvidia显卡驱动
sleep 5
echo 请稍候......正在自动安装
sudo dnf install xorg-x11-drv-nvidia.x86_64 xorg-x11-drv-nvidia-cuda.x86_64 nvidia-settings.x86_64 -y
echo 安装已经结束，请等待10分钟左右后，重启电脑开始使用吧！
echo 如果没成功加载nvidia驱动，启动终端，输入sudo akmods --force，然后sudo dracut -v --force并重启电脑，即可完成安装！
sleep 15
