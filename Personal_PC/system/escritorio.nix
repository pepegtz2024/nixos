{
	  # Configure keymap in X11
  services.xserver = {
    enable = true;
    xkb.layout = "latam";
    xkb.variant = "";
  };

   services = {
	xserver.desktopManager.gnome.enable = true;
	xserver.displayManager.gdm.enable = true;
 };
}
