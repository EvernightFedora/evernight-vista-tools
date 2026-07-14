echo "Starting to install MIDI playback support, you have 5 seconds to cancel this MIDI playback support installation."
sleep 5
echo "Please wait... Automatically installing MIDI playback support"
sudo dnf install gstreamer1-plugins-bad-free-fluidsynth -y
echo "MIDI playback support has been installed. Now you can try opening a MID file to play MIDI!"
sleep 10
