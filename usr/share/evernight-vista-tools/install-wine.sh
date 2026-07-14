echo "You have 5 seconds to cancel this Wine installation"
sleep 5
echo "Please wait... Wine is being installed automatically"
sudo dnf install terra-wine-dxvk-d3d9 terra-wine-dxvk terra-wine-dxvk-d3d10 winetricks-git wineasio -y
echo "Wine has been installed. To start using Wine, please enter `wine <the Windows program you want to run>` in the terminal, or just double-click the EXE in the file manager (Dolphin)!"
sleep 10
