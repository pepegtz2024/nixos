{
  services.flatpak.overrides = {
    "org.vinegarhq.Sober".Context = {
      filesystems = [
        "xdg-run/app/com.discordapp.Discord:create"
        "xdg-run/discord-ipc-0"
      ];
      devices = [
        "input"
      ];
    };

    "io.github.hedge_dev.hedgemodmanager".Context = {
      filesystems = [
        "home/.var/app/io.github.hedge_dev.unleashedrecomp"
      ];
    };

    "org.kde.ark".Context = {
      filesystems = [
        "home/.var/app/info.febvre.Komikku"
        "home/Documentos/manga"
      ];
    };

    "com.steamgriddb.steam-rom-manager".Context = {
      filesystems = [
        "home/Games/roms"
      ];
    };

  };
}
