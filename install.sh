#Here is the install script, check it out!!

#Installs required packages

echo Installing required packages...
sudo pacman -S --needed hyprland starship swww swaync hyprpaper hyprlock wofi yay ghostty thunar ttf-font-awesome
git clone https://aur.archlinux.org/wlogout.git
cd wlogout
makepkg -si

#move files from .git file

echo Installing Setup...
echo All of your current configurations will be deleted, please back them up before proceeding.
read -p "Do you want to continue? (y/N):" confirm

if [[ ! $confirm =~ ^[Yy]$ ]]; then
    echo "Installation cancelled."
    exit 0
fi 

rm -rv ~/.config/hypr
rm -rv ~/.config/swaync
rm -rv ~/.config/waybar
rm -rv ~/.config/wlogout
rm -rv ~/.config/wofi
rm -rv ~/.config/starship.toml
rm ~/.bashrc

cd Hyprland-Setup
cp -v ghostty ~/.config
cp -v hypr ~/.config
cp -v swaync ~/.config
cp -v waybar ~/.config
cp -v wlogout ~/.config
cp -v wofi ~/.config
cp -v starship.toml ~/.config
mv bashrc ~/.bashrc
cp wallpaper ~/

echo Installation is done! Please log out and log back in! You can remove this directory now.
