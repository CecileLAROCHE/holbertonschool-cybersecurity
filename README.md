# 🧠 VM Setup Cheat Sheet (Linux Security)

---

## 0. GitHub Link (1 fois)
- Aller sur: https://cod.hbtn.io
- Onglet **GitHub**
- Lier ton compte

✔ Vérif: ton username apparaît

## 1. Create VM

### Installer VirtualBox (chaque début sur un nouveau pc)
Linux:\
```sudo apt install virtualbox```

### Télécharger ISO (chaque début sur un nouveau pc)
Kali Linux:\
https://www.kali.org/get-kali/#kali-installer-images

### Créer VM (chaque début sur un nouveau pc)
RAM: 4GB (8GB recommandé)\
CPU: 2 cores (4 recommandé)\
Disk: 40GB (80GB recommandé)\
Network: NAT

### Installer OS + Guest Additions (chaque début sur un nouveau pc)

✔ Vérif:\

```whoami```\
```uname -a```

## 2. Install OpenVPN (chaque début sur un nouveau pc)

```sudo apt update```\
```sudo apt install openvpn -y```

✔ Vérif:

```openvpn --version```


## 3. VPN Certificate (1 fois)
- cod.hbtn.io → onglet **VPN**
- Choisir location
- Click Create
- Télécharger .ovpn

### 📌 IMPORTANT:

- Stocker sur Google Drive
- Copier dans VM (/home/kali/Téléchargements/)

✔ Vérif:
fichier .ovpn présent

## 4. Connect VPN (chaque démarage de la VM)

```cd ~/Téléchargements/```\
```sudo openvpn --config 11458_holbertonstudents_com.ovpn```

✔ Vérif:
Initialization Sequence Completed

**⚠️ Ne pas fermer le terminal**

## 5. SSH Client

✔ Vérif:

```ssh -V```

Si absent:

```sudo apt install openssh-client -y```


## 6. SSH Key

```ssh-keygen -t ed25519 -C 11458@holbertonstudents.com```

Entrées:
- Enter (default path)
- Passphrase (optionnel)

✔ Vérif:

```ls -la ~/.ssh/```

## 7. Add SSH Key to Platform
cod.hbtn.io → onglet SSH\
Copier contenu de:
```cat ~/.ssh/id_ed25519.pub```.

## 🚨 Checklist rapide (si crash)
- VM OK
- OpenVPN installé
- .ovpn récupéré
- VPN connecté
- SSH OK
- clé SSH ajoutée

## 💡 Tips (important)

Toujours garder:
- .ovpn (Google Drive)
- clé SSH sauvegardée (optionnel)

## ⚠️ Script utile:
```restart_lab.sh``` permet de relancer rapidement après crash ou fermeture terminal
