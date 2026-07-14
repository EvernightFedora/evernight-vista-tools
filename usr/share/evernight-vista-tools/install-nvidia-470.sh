echo "Starting the installation of the NVidia graphics card driver. If you are not an NVidia user, please stop the installation!"
sudo dnf install mokutil -y
echo "If Secure Boot is already on (shows as: SecureBoot enabled), you need to sign the Nvidia driver; otherwise, Evernight Vista can still start, but the Nvidia driver will be blocked from loading."
mokutil --sb-state
echo "You now have 5 seconds to press Ctrl C to cancel this NVIDIA graphics driver installation"
sleep 5
echo "Please wait... Automatically installing"
sudo dnf install akmods-evernight xorg-x11-drv-nvidia-470xx.x86_64 xorg-x11-drv-nvidia-470xx-cuda.x86_64 nvidia-settings-470xx.x86_64 -y
echo "The installation is complete. Please wait about 10 minutes, then restart your computer to start using it!"
echo "If the NVIDIA driver didn't load successfully, open the terminal, type sudo akmods --force, then sudo dracut -v --force, and restart your computer to complete the installation!"
sleep 15
