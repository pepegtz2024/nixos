{ pkgs, ... }: {
environment.systemPackages = with pkgs; [
distrobox
podman-compose
gearlever
git
clamtk
];
services.flatpak.packages = [
"app.zen_browser.zen"
"org.gnome.World.PikaBackup"
"com.ranfdev.DistroShelf"
"com.vysp3r.ProtonPlus"
"org.musicbrainz.Picard"
"org.kde.kate"
"io.github.dzheremi2.lrcmake-gtk"
"org.kde.ark"
"org.kde.kalk"
];
}
