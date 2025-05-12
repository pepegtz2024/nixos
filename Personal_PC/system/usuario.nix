{ pkgs, ... }: {
	 users.users.pepegtz2024 = {
    isNormalUser = true;
    description = "Jose de Jesus Gutierrez Campos";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
    ];
  };
  networking.hostName = "Artemisa";
}
