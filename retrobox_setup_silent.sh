#!/bin/bash

# Installing dependancies: git
sudo apt install git -y

# Cloning RetroPie-Setup
git clone --depth=1 https://github.com/RetroPie/RetroPie-Setup.git

# Cloning and merging ZeroJay's RetroPie extras
git clone https://github.com/zerojay/RetroPie-Extra
cp -R ./RetroPie-Extra/scriptmodules/* ./RetroPie-Setup/scriptmodules
rm -rf RetroPie-Extra

# Cloning and merging George McMullen's Box86 & Wine
git clone https://github.com/GeorgeMcMullen/rp-box86wine.git
cp -R ./rp-box86wine/scriptmodules/* ./RetroPie-Setup/scriptmodules
rm -rf rp-box86wine

# Adding Sigbob's PiGalaxy 
wget -O ./RetroPie-Setup/scriptmodules/ports https://raw.githubusercontent.com/sigboe/pie-galaxy/master/scriptmodule.sh

# RetroPie Setup
echo "raspberry" | sudo -S echo "Gaining Root: Installing RetroPie Packages"
sudo ./retropie_packages.sh golang
sudo ./retropie_packages.sh mesa-drm
sudo ./retropie_packages.sh omxiv
sudo ./retropie_packages.sh sdl1
sudo ./retropie_packages.sh sdl2
sudo ./retropie_packages.sh retroarch
sudo ./retropie_packages.sh emulationstation
sudo ./retropie_packages.sh retropiemenu
sudo ./retropie_packages.sh runcommand
sudo ./retropie_packages.sh joy2key

# Emulators
sudo ./retropie_packages.sh lr-atari800        # Atari 8-bit/800/5200
sudo ./retropie_packages.sh lr-stella2014      # Atari 2600
sudo ./retropie_pacakges.sh lr-prosystem       # Atari 7800
sudo ./retropie_packages.sh lr-hatari          # Atari Hatari
sudo ./retropie_packages.sh lr-virtualjaguar   # Atari Jaguar
sudo ./retropie_pacakges.sh lr-handy           # Atari Lynx
sudo ./retropie_packages.sh box86              # Box86
sudo ./retropie_packages.sh lr-vice            # Commodore C64/C128/PET/Plus4/VIC20
sudo ./retropie_packages.sh lr-dosbox-pure     # DosBox
sudo ./retropie_packages.sh frotz              # Infocom
sudo ./retropie_packages.sh lr-freej2me        # J2ME
sudo ./retropie_packages.sh lr-fceumm          # Nintendo Entertainment System
sudo ./retropie_packages.sh lr-snes9x          # Nintendo Super Nintendo
sudo ./retropie_packages.sh lr-tgbdual         # Nintendo Gameboy Color
sudo ./retropie_packages.sh lr-mgba            # Nintendo Gameboy Color / Advanced
sudo ./retropie_packages.sh lr-muppen4plus     # Nintendo 64
sudo ./retropie_packages.sh lr-desmume         # Nintendo DS
sudo ./retropie_packages.sh lr-beetle-vb       # Nintendo Virtual Boy
sudo ./retropie_packages.sh lr-mame2000        # Mame 0.36b5
sudo ./retropie_packages.sh lr-mame2003-plus   # Mame 0.78
sudo ./retropie_packages.sh lr-mame2010        # Mame 0.139
sudo ./retropie_packages.sh lr-mame2015        # Mame 0.160
sudo ./retropie_packages.sh lr-mame2016        # Mame 0.174
sudo ./retropie_packages.sh lr-mame            # Mame Current
sudo ./retropie_packages.sh lr-pcsx-rearmed    # PlayStation
sudo ./retropie_packages.sh lr-ppsspp          # PSP
sudo ./retropie_packages.sh lr-flycast         # Sega Dreamcast
sudo ./retropie_packages.sh lr-genesis-plus-gx # Sega 8/64 bit Genesis
sudo ./retropie_packages.sh lr-smsplus-gx      # Sega Master System & Game Gear
sudo ./retropie_packages.sh lr-beetle-saturn   # Sega Saturn
sudo ./retropie_packages.sh lr-scummvm         # ScummVM
sudo ./retropie_packages.sh lr-beetle-ngp      # SNK Neo Geo Pocket (Color)
sudo ./retropie_packages.sh lr-neocd           # SNK Neo Geo CD

# Ports
sudo ./retropie_packages.sh freeciv            # Civilization
sudo ./retropie_packages.sh cgenius            # Commander Keen
sudo ./retropie_packages.sh eduke32            # Duke Nukem 3D
sudo ./retropie_packages.sh devilutionx        # Diablo Engine
sudo ./retropie_packages.sh lr-prboom          # Doom I/II
sudo ./retropie_packages.sh xash3d-fwgs        # Half-Life Engine
sudo ./retropie_packages.sh gemrb              # Infinity Engine
sudo ./retropie_packages.sh pingus             # Lemmings
sudo ./retropie_packages.sh micropolis         # Sim City
sudo ./retropie_packages.sh solarus            # Solarus
sudo ./retropie_packages.sh srb2               # Sonic Robo Blast 2
sudo ./retropie_packages.sh smw                # Super Mario War
sudo ./retropie_packages.sh supertux           # SuperTux
sudo ./retropie_packages.sh steamlink          # Steam Link
sudo ./retropie_packages.sh ltris              # Tetris
sudo ./retropie_packages.sh lr-tryquake        # Quake 1 Engine
sudo ./retropie_packages.sh yquake2            # Quake 2 Client
sudo ./retropie_packages.sh ioquake3           # Quake 3
sudo ./retropie_packages.sh wolf4sd1           # Wolfenstein 3D /Spear of Destiny
sudo ./retropie_packages.sh warmux             # Worms
sudo ./retropie_packages.sh zeldansq           # Zelda Navi's Quest fangame
sudo ./retropie_packages.sh zeldapicross       # Zelda themed Picross fangame

# Other
sudo ./retropie_packages.sh firefox-esr        # Firefox
sudo ./retropie_packages.sh deadbeef           # Music Player
sudo ./retropie_packages.sh kweb               # Kiosk Web Browser
sudo ./retropie_packages.sh netsurf            # Web Browser
sudo ./retropie_packages.sh vgmplay            # Music Player



# Supplementary
sudo ./retropie_packages.sh scraper
sudo ./retropie_packages.sh skyscraper
sudo ./retropie_packages.sh launchingimages
sudo ./retropie_packages.sh fun-facts-splashscreens
sudo ./retropie_packages.sh joystick-selection
sudo ./retropie_packages.sh wine
sudo ./retropie_packages.sh screenshot

# Plex
git clone https://github.com/AlphaGeekTech/retromoonlight
sudo bash ./retromoonlight/Scripts/Install_plex.sh
        
# Moonlight
sudo bash ./Scripts/Install_moonlight.sh
sudo bash ./Scripts/Install_menus.sh
sudo bash ./Scripts/Install_Scripts.sh
sudo bash ./Scripts/Install_themes.sh
rm -rf retropiemoonlight

# Background Music Player
git clone https://github.com/Naprosnia/RetroPie_BGM_Player
sudo bash ./RetroPie_BGM_Player/install.sh
