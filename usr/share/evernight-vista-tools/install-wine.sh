echo 你有5秒钟的时间可以取消本次安装wine
sleep 5
echo 请稍候......正在自动安装wine
sudo dnf install wine* -y
echo wine安装完成，要开始使用wine，请在终端输入"wine <你想要运行的Windows程序>"，或在文件管理器（dolphin）双击exe即可！
sleep 10
