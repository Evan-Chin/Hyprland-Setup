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
cp -v Hyprland-Setup/ghostty ~/.config
cp -v Hyprland-Setup/hypr ~/.config
cp -v Hyprland-Setup/swaync ~/.config
cp -v Hyprland-Setup/waybar ~/.config
cp -v Hyprland-Setup/wlogout ~/.config
cp -v Hyprland-Setup/wofi ~/.config
cp -v Hyprland-Setup/starship.toml ~/.config
mv Hyprland-Setup/bashrc ~/.bashrc
cp Hyprland-Setup/wallpaper ~/

echo Installation is done! Please log out and log back in! You can remove this directory now.
