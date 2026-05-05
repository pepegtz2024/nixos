{ config, lib, pkgs, ... }:
let
intelBusId = "PCI:0:2:0"; #Usar solo si la CPU es intel
nvidiaBusId = "PCI:1:0:0";
amdBusId = ""; #Usar solo si la CPU es amd
in
{
  services.xserver.videoDrivers = ["nvidia"];

  hardware.nvidia-container-toolkit.enable = true;

  hardware.nvidia = {

    modesetting.enable = true;

    powerManagement.enable = true;

    powerManagement.finegrained = true;

    open = true;

    nvidiaSettings = true;

    package = config.boot.kernelPackages.nvidiaPackages.stable;
  };
  hardware.nvidia.prime = {
		offload = {
			enable = true;
		};
		# Make sure to use the correct Bus ID values for your system!
        inherit intelBusId;
		inherit nvidiaBusId;
        # inherit amdgpuBusId
	};
	environment.systemPackages = with pkgs; [
		cudatoolkit
	];
}
