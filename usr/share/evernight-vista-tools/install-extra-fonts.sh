echo "Starting to install additional fonts, you have 5 seconds to cancel this installation of additional fonts"
sleep 5
echo "Please wait... automatically installing additional fonts"
sudo dnf install google-noto-sans-fonts.noarch google-noto-sans-mono-fonts.noarch google-noto-serif-fonts.noarch google-noto-serif-cjk-vf-fonts google-noto-serif-cjk-vf-fonts google-noto-sans-mono-cjk-vf-fonts -y
echo "Font addition completed!"
sleep 10
