{
  services.xserver = {
    enable = true;
    xkb.layout = "latam";
    xkb.variant = "";
  };

   services = {
	desktopManager.plasma6.enable = true;
	displayManager.sddm.enable = true;
	displayManager.sddm.wayland.enable = true;
 };
}
