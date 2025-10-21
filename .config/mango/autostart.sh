# waybar -c ~/.config/mango/waybar/config.jsonc -s ~/.config/mango/waybar/styles.css >/dev/null 2>&1 &
waybar 2>&1 &
swaybg -i /mnt/data/Wisdom/Wallpapers/wallhaven-218m3y.jpg >/dev/null 2>&1 &

# keep clipboard content
wl-clip-persist --clipboard regular --reconnect-tries 0 &

# clipboard content manager
wl-paste --type text --watch cliphist store & 

# obs
dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=wlroots


# Permission authentication
# /usr/lib/xfce-polkit/xfce-polkit &
