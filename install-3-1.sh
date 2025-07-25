#!/data/data/com.termux/files/usr/bin/bash

echo "🧠 Installing JARVIS (install-3.sh)..."

# Update Termux packages
pkg update -y
pkg upgrade -y
pkg install -y git curl unzip python

# Setup working directory
mkdir -p ~/jarvis
cd ~/jarvis

# Download latest JARVIS core ZIP
curl -L -o jarvis-core-install.zip https://github.com/parkmose/jarvis-core/raw/main/jarvis-core-install.zip
unzip -o jarvis-core-install.zip

# Create executable launcher
echo -e '#!/data/data/com.termux/files/usr/bin/bash\ncd ~/jarvis && python jarvis.py' > ~/../usr/bin/jarvis
chmod +x ~/../usr/bin/jarvis

echo "✅ JARVIS 설치 완료! 'jarvis' 입력 시 실행됩니다."
