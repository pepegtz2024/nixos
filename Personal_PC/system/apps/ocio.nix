{ pkgs, ... }: {
programs.steam.enable = true;
hardware.steam-hardware.enable = true;
environment.systemPackages = with pkgs; [
discord
adwaita-icon-theme
mcpelauncher-ui-qt
protontricks
heroic
retroarch-full
ryubing
];
services.flatpak.packages = [
"com.yacreader.YACReader"
"org.telegram.desktop"
"io.github.celluloid_player.Celluloid"
"info.febvre.Komikku"
"com.steamgriddb.SGDBoop"
"org.srb2.SRB2"
"org.kartkrew.RingRacers"
"org.srb2.SRB2Persona"
"org.vinegarhq.Sober"
"net.rpcs3.RPCS3"
"info.cemu.Cemu"
"io.github.hedge_dev.hedgemodmanager"
"com.moulberry.PandoraLauncher"
"com.steamgriddb.steam-rom-manager"
];
}
