echo 开始安装如意玲珑补充组件，你有5秒钟的时间可以取消本次安装补充如意玲珑组件
sleep 5
echo 请稍候......正在自动安装补充如意玲珑组件
sudo dnf install erofs-fuse erofs-utils libyaml yaml-cpp git wqy-* texlive-arphic* -y
sleep 5
sudo ll-cli install com.glenfly.driver.display.arise
echo 如意玲珑组件已补充完成，请在开始菜单找到“如意玲珑商店”开始安装想要的如意玲珑应用吧！
sleep 10
