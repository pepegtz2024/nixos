{ config,  pkgs,  ... }:
let
stateVersion = "25.11";
in
  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  # Did you read the comment?
{
  imports =
    [ # Include the results of the hardware scan.
    ./HP-Victus-hardware.nix
    ./system/nvidia.nix
	./system/apps/productividad.nix
	./system/apps/ocio.nix
	./system/apps/utilidad.nix
	./system/apps/overrides.nix
	./system/sonido.nix
	./system/bluetooth.nix
	./system/bootloader.nix
	./system/usuario.nix
	./system/zram.nix
	./system/escritorio.nix
	./system/network-manager.nix
	./system/cups.nix
	./system/shell.nix
	#./system/gnome-extensions.nix
	./system/firewall.nix
	./system/waydroid.nix
	./system/lanzaboote.nix
	./system/garbage-collector.nix
	./system/flatpak.nix
	./system/podman.nix
	./system/hardware-acceleration.nix
	./system/clamav.nix
    ];

  nixpkgs.config.allowUnfree = true;

  # Set your time zone.
  time.timeZone = "America/Mexico_City";

  # Select internationalisation properties.
  i18n.defaultLocale = "es_MX.UTF-8";
	
  # Configure console keymap
  console.keyMap = "la-latin1";

  services.xserver = {
    enable = true;
    xkb.layout = "latam";
    xkb.variant = "";
  };


 system = {
 inherit stateVersion;
 };
}
