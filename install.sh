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

cd ~/
rm -rv ~/.config/hypr
rm -rv ~/.config/swaync
rm -rv ~/.config/waybar
rm -rv ~/.config/wlogout
rm -rv ~/.config/wofi
rm -rv ~/.config/starship.toml
rm ~/.bashrc

cp -r Hyprland-Setup/ghostty ~/.config/
cp -r Hyprland-Setup/hypr ~/.config/
cp -r Hyprland-Setup/swaync ~/.config/
cp -r Hyprland-Setup/waybar ~/.config/
cp -r Hyprland-Setup/wlogout ~/.config/
cp -r Hyprland-Setup/wofi ~/.config/
cp -r Hyprland-Setup/Wallpapers ~/

# Copy starship configuration
cp Hyprland-Setup/starship.toml ~/.config/

# Handle bashrc (merge or replace)
# This will overwrite existing .bashrc - use cat >> to append instead if needed
mv Hyprland-Setup/bashrc ~/.bashrc

echo "Installation is done! Please log out and log back in! You can remove this directory now."
mv Hyprland-Setup/bashrc ~/.bashrc

echo Installation is done! Please log out and log back in! You can remove this directory now.
