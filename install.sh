#Here is the install script, check it out!!

#Installs required packages

echo Installing required packages...
sudo pacman -S --needed hyprland starship  swww wlogout swaync hyprpaper hyprlock wofi yay ghostty thunar
yay -S font-awesome-5

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

cd Hyprland-Setup
mv -v ghostty ~/.config
mv -v hypr ~/.config
mv -v swaync ~/.config
mv -v waybar ~/.config
mv -v wlogout ~/.config
mv -v wofi ~/.config
mv -v starship.toml ~/.config
mv -v bashrc ~/.bashrc

echo Installation is done! Please log out and log back in!
cd
rm Hyprland-Setup
