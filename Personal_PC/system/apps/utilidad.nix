{ pkgs, ... }: {
environment.systemPackages = with pkgs; [
distrobox
podman-compose
gearlever
kopia-ui
git
];
services.flatpak.packages = [
"app.zen_browser.zen"
"io.github.dvlv.boxbuddyrs"
"org.gnome.World.PikaBackup"
"ca.littlesvr.asunder"
"com.gitlab.davem.ClamTk"
"com.vysp3r.ProtonPlus"
"org.musicbrainz.Picard"
"org.nickvision.tubeconverter"
"org.kde.kate"
"io.github.dzheremi2.lrcmake-gtk"
"app.devsuite.Ptyxis"
"de.swsnr.pictureoftheday"
"com.mattjakeman.ExtensionManager"
"org.kde.ark"
"org.kde.kalk"
"net.nokyan.Resources"
];
}
