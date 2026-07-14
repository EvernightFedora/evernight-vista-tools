echo "Starting the installation of the NVidia graphics card driver. If you are not an NVidia user, please stop the installation!"
sudo dnf install mokutil -y
echo "If Secure Boot is already on (shows as: SecureBoot enabled), you need to sign the NVIDIA driver; otherwise, Evernight Vista can still start, but the NVIDIA driver will be blocked from loading."
mokutil --sb-state
echo "You now have 5 seconds to press Ctrl+C to cancel this NVIDIA graphics driver installation"
sleep 5
echo "Please wait... Automatically installing"
sudo dnf install akmods-evernight xorg-x11-drv-nvidia-390xx.x86_64 xorg-x11-drv-nvidia-390xx-cuda.x86_64 nvidia-settings-390xx.x86_64 kmodtool openssl -y
echo "Please wait, generating MOK key"
sudo kmodgenca -a
echo "Please provide a password, and then remember this password, you'll need it later when restarting!"
sudo mokutil --import /etc/pki/akmods/certs/public_key.der
echo "The installation is complete. Please wait about 10 minutes, then restart your computer and enter the MOK password. Here's how: after restarting, when the blue screen appears, press any key within 10 seconds, then go through Enroll MOK, Continue or Yes, and then enter your MOK password. After that, select “Reboot” to restart your computer. Then, type 'lsmod | grep nvidia' to check if NVIDIA has loaded successfully, and go to KDE System Settings > “About this System” to see if your NVIDIA graphics card model is displayed."
echo "If the NVIDIA driver didn't load successfully, open the terminal, type sudo akmods --force, then sudo dracut -v --force, and restart your computer to complete the installation!"
sleep 20
