#!/data/data/com.termux/files/usr/bin/bash

echo "✨ Starting JARVIS installation..."

# Update and install required packages
pkg update -y
pkg upgrade -y
pkg install -y python zip unzip curl

# Setup directories
mkdir -p ~/jarvis
mkdir -p ~/jarvis/logs

# Download JARVIS core files
cd ~/jarvis
curl -L -o jarvis-core-install.zip https://github.com/parkmose/jarvis-core/raw/main/jarvis-core-install.zip
unzip -o jarvis-core-install.zip

# Create launcher
echo -e '#!/data/data/com.termux/files/usr/bin/bash\ncd ~/jarvis && python jarvis.py' > ~/../usr/bin/jarvis
chmod +x ~/../usr/bin/jarvis

echo "🧠 JARVIS is now installed. Type 'jarvis' to start."
