#!/bin/bash

# === CONFIG ===
VPN_FILE="$HOME/Téléchargements/11458_holbertonstudents_com.ovpn"

echo "🔄 Starting lab environment..."

# 1. Vérifier OpenVPN
if ! command -v openvpn &> /dev/null
then
    echo "❌ OpenVPN not installed. Installing..."
    sudo apt update && sudo apt install openvpn -y
else
    echo "✅ OpenVPN already installed"
fi

# 2. Vérifier fichier VPN
if [ ! -f "$VPN_FILE" ]; then
    echo "❌ VPN file not found: $VPN_FILE"
    exit 1
fi

echo "✅ VPN file found"

# 3. Vérifier SSH
if ! command -v ssh &> /dev/null
then
    echo "❌ SSH not installed. Installing..."
    sudo apt install openssh-client -y
else
    echo "✅ SSH OK"
fi

# 4. Git check
echo "🔧 Checking Git..."

if ! command -v git &> /dev/null
then
    echo "❌ Git not installed. Installing..."
    sudo apt install git -y
else
    echo "✅ Git already installed"
fi

# 5. Git config 
echo "🔧 Configuring Git..."

git_email=$(git config --global user.email 2>/dev/null)
git_name=$(git config --global user.name 2>/dev/null)

if [ "$git_email" != "11458@holbertonstudents.com" ]; then
    git config --global user.email "11458@holbertonstudents.com"
fi

if [ "$git_name" != "CecileLAROCHE" ]; then
    git config --global user.name "CecileLAROCHE"
fi

echo "✅ Git configured:"
git config --global user.name
git config --global user.email

# 6. Lancer VPN
echo "🚀 Connecting to VPN..."
sudo openvpn --config "$VPN_FILE"