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
      ./system/HP-Victus-saco.nix
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
