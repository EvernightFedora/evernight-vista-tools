echo 开始安装NVidia显卡驱动，如果你是非nvidia用户请停止安装！
sudo dnf install mokutil -y
echo 如果安全启动已经打开（显示为：SecureBoot enabled），请对nvidia驱动进行签名，否则Evernight Vista仍可以启动，但nvidia驱动会被拒绝加载
mokutil --sb-state
echo 你现在有5秒钟的时间，可以按下Ctrl+C取消本次安装nvidia显卡驱动
sleep 5
echo 请稍候......正在自动安装
sudo dnf install xorg-x11-drv-nvidia.x86_64 xorg-x11-drv-nvidia-cuda.x86_64 nvidia-settings.x86_64 kmodtool akmods openssl -y
echo 请稍候，正在生成MOK密钥
sudo kmodgenca -a
echo 请提供一个密码，然后请记住这个密码，稍后重启时需要使用！
sudo mokutil --import /etc/pki/akmods/certs/public_key.der
echo 安装已经结束，请等待10分钟左右后，重启电脑输入MOK密码，方法是：重启后，出现蓝色界面时，10秒之内请按任意键，之后依次找到“Enroll MOK”、“Continue”、“Yes”，然后输入你的MOK密码，之后“Reboot”，重启电脑。之后输入"lsmod | grep nvidia"检查nvidia是否已经成功加载，并去KDE系统设置“关于此系统”查看你的nvidia显卡是否显示了你的nvidia显卡型号
echo 如果没成功加载nvidia驱动，启动终端，输入sudo akmods --force，然后sudo dracut -v --force并重启电脑，即可完成安装！
sleep 20
