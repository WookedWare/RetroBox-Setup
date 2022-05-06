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
sudo ./RetroPie-Setup/retropie_packages.sh golang
sudo ./RetroPie-Setup/retropie_packages.sh mesa-drm
sudo ./RetroPie-Setup/retropie_packages.sh omxiv
sudo ./RetroPie-Setup/retropie_packages.sh sdl1
sudo ./RetroPie-Setup/retropie_packages.sh sdl2
sudo ./RetroPie-Setup/retropie_packages.sh retroarch
sudo ./RetroPie-Setup/retropie_packages.sh emulationstation
sudo ./RetroPie-Setup/retropie_packages.sh retropiemenu
sudo ./RetroPie-Setup/retropie_packages.sh runcommand
sudo ./RetroPie-Setup/retropie_packages.sh joy2key

# Emulators
sudo ./RetroPie-Setup/retropie_packages.sh lr-atari800        # Atari 8-bit/800/5200
sudo ./RetroPie-Setup/retropie_packages.sh lr-stella2014      # Atari 2600
sudo ./retropie_pacakges.sh lr-prosystem       # Atari 7800
sudo ./RetroPie-Setup/retropie_packages.sh lr-hatari          # Atari Hatari
sudo ./RetroPie-Setup/retropie_packages.sh lr-virtualjaguar   # Atari Jaguar
sudo ./retropie_pacakges.sh lr-handy           # Atari Lynx
sudo ./RetroPie-Setup/retropie_packages.sh box86              # Box86
sudo ./RetroPie-Setup/retropie_packages.sh lr-vice            # Commodore C64/C128/PET/Plus4/VIC20
sudo ./RetroPie-Setup/retropie_packages.sh lr-dosbox-pure     # DosBox
sudo ./RetroPie-Setup/retropie_packages.sh frotz              # Infocom
sudo ./RetroPie-Setup/retropie_packages.sh lr-freej2me        # J2ME
sudo ./RetroPie-Setup/retropie_packages.sh lr-fceumm          # Nintendo Entertainment System
sudo ./RetroPie-Setup/retropie_packages.sh lr-snes9x          # Nintendo Super Nintendo
sudo ./RetroPie-Setup/retropie_packages.sh lr-tgbdual         # Nintendo Gameboy Color
sudo ./RetroPie-Setup/retropie_packages.sh lr-mgba            # Nintendo Gameboy Color / Advanced
sudo ./RetroPie-Setup/retropie_packages.sh lr-muppen4plus     # Nintendo 64
sudo ./RetroPie-Setup/retropie_packages.sh lr-desmume         # Nintendo DS
sudo ./RetroPie-Setup/retropie_packages.sh lr-beetle-vb       # Nintendo Virtual Boy
sudo ./RetroPie-Setup/retropie_packages.sh lr-mame2000        # Mame 0.36b5
sudo ./RetroPie-Setup/retropie_packages.sh lr-mame2003-plus   # Mame 0.78
sudo ./RetroPie-Setup/retropie_packages.sh lr-mame2010        # Mame 0.139
sudo ./RetroPie-Setup/retropie_packages.sh lr-mame2015        # Mame 0.160
sudo ./RetroPie-Setup/retropie_packages.sh lr-mame2016        # Mame 0.174
sudo ./RetroPie-Setup/retropie_packages.sh lr-mame            # Mame Current
sudo ./RetroPie-Setup/retropie_packages.sh lr-pcsx-rearmed    # PlayStation
sudo ./RetroPie-Setup/retropie_packages.sh lr-ppsspp          # PSP
sudo ./RetroPie-Setup/retropie_packages.sh lr-flycast         # Sega Dreamcast
sudo ./RetroPie-Setup/retropie_packages.sh lr-genesis-plus-gx # Sega 8/64 bit Genesis
sudo ./RetroPie-Setup/retropie_packages.sh lr-smsplus-gx      # Sega Master System & Game Gear
sudo ./RetroPie-Setup/retropie_packages.sh lr-beetle-saturn   # Sega Saturn
sudo ./RetroPie-Setup/retropie_packages.sh lr-scummvm         # ScummVM
sudo ./RetroPie-Setup/retropie_packages.sh lr-beetle-ngp      # SNK Neo Geo Pocket (Color)
sudo ./RetroPie-Setup/retropie_packages.sh lr-neocd           # SNK Neo Geo CD

# Ports
sudo ./RetroPie-Setup/retropie_packages.sh freeciv            # Civilization
sudo ./RetroPie-Setup/retropie_packages.sh cgenius            # Commander Keen
sudo ./RetroPie-Setup/retropie_packages.sh eduke32            # Duke Nukem 3D
sudo ./RetroPie-Setup/retropie_packages.sh devilutionx        # Diablo Engine
sudo ./RetroPie-Setup/retropie_packages.sh lr-prboom          # Doom I/II
sudo ./RetroPie-Setup/retropie_packages.sh xash3d-fwgs        # Half-Life Engine
sudo ./RetroPie-Setup/retropie_packages.sh gemrb              # Infinity Engine
sudo ./RetroPie-Setup/retropie_packages.sh pingus             # Lemmings
sudo ./RetroPie-Setup/retropie_packages.sh micropolis         # Sim City
sudo ./RetroPie-Setup/retropie_packages.sh solarus            # Solarus
sudo ./RetroPie-Setup/retropie_packages.sh srb2               # Sonic Robo Blast 2
sudo ./RetroPie-Setup/retropie_packages.sh smw                # Super Mario War
sudo ./RetroPie-Setup/retropie_packages.sh supertux           # SuperTux
sudo ./RetroPie-Setup/retropie_packages.sh steamlink          # Steam Link
sudo ./RetroPie-Setup/retropie_packages.sh ltris              # Tetris
sudo ./RetroPie-Setup/retropie_packages.sh lr-tryquake        # Quake 1 Engine
sudo ./RetroPie-Setup/retropie_packages.sh yquake2            # Quake 2 Client
sudo ./RetroPie-Setup/retropie_packages.sh ioquake3           # Quake 3
sudo ./RetroPie-Setup/retropie_packages.sh wolf4sd1           # Wolfenstein 3D /Spear of Destiny
sudo ./RetroPie-Setup/retropie_packages.sh warmux             # Worms
sudo ./RetroPie-Setup/retropie_packages.sh zeldansq           # Zelda Navi's Quest fangame
sudo ./RetroPie-Setup/retropie_packages.sh zeldapicross       # Zelda themed Picross fangame

# Other
sudo ./RetroPie-Setup/retropie_packages.sh firefox-esr        # Firefox
sudo ./RetroPie-Setup/retropie_packages.sh deadbeef           # Music Player
sudo ./RetroPie-Setup/retropie_packages.sh kweb               # Kiosk Web Browser
sudo ./RetroPie-Setup/retropie_packages.sh netsurf            # Web Browser
sudo ./RetroPie-Setup/retropie_packages.sh vgmplay            # Music Player



# Supplementary
sudo ./RetroPie-Setup/retropie_packages.sh scraper
sudo ./RetroPie-Setup/retropie_packages.sh skyscraper
sudo ./RetroPie-Setup/retropie_packages.sh launchingimages
sudo ./RetroPie-Setup/retropie_packages.sh fun-facts-splashscreens
sudo ./RetroPie-Setup/retropie_packages.sh joystick-selection
sudo ./RetroPie-Setup/retropie_packages.sh wine
sudo ./RetroPie-Setup/retropie_packages.sh screenshot

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
