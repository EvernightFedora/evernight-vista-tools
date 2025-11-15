echo 开始安装补充字体，你有5秒钟的时间可以取消本次安装补充字体
sleep 5
echo 请稍候......正在自动安装补充字体
sudo dnf install google-noto-sans-fonts.noarch google-noto-sans-mono-fonts.noarch google-noto-serif-fonts.noarch google-noto-serif-cjk-vf-fonts google-noto-serif-cjk-vf-fonts google-noto-sans-mono-cjk-vf-fonts -y
echo 字体补充完成！
sleep 10
