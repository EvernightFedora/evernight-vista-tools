echo 开始安装MIDI播放支持，你有5秒钟的时间可以取消本次安装MIDI播放支持
sleep 5
echo 请稍候......正在自动安装MIDI播放支持
sudo dnf install gstreamer1-plugins-bad-free-fluidsynth -y
echo MIDI播放支持安装完成，现在可以尝试打开MID文件播放MIDI吧！
sleep 10
