{
	description = "La configuracion del sistema";
	inputs = {
		nixpkgs = {
			url = "github:nixos/nixpkgs/nixos-unstable";
		};

		nix-flatpak = {
		url = "github:gmodena/nix-flatpak/?ref=latest";
		};

		lanzaboote = {
        url = "github:nix-community/lanzaboote/v1.0.0";
        };

		nixos-hardware = {
		url = "github:NixOS/nixos-hardware/master";
		};

		};

	outputs ={ self, nixpkgs, nix-flatpak, lanzaboote, nixos-hardware, ... }: {
		nixosConfigurations.Artemisa = nixpkgs.lib.nixosSystem {
			system = "x86_64-linux";
			modules = [ ./Personal_PC/HP-Victus.nix
			nix-flatpak.nixosModules.nix-flatpak
			lanzaboote.nixosModules.lanzaboote
			nixos-hardware.nixosModules.common-cpu-intel
			nixos-hardware.nixosModules.common-pc-laptop
			 ];
		};
	};
}
