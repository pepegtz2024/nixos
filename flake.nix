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
    url = "github:nix-community/lanzaboote/v0.4.2";
    };
		};

	outputs ={ self, nixpkgs, nix-flatpak, lanzaboote, ... }:
	let
       	system = "x86_64-linux";
	in  {
		nixosConfigurations.Artemisa = nixpkgs.lib.nixosSystem {
			inherit system;
			modules = [ ./Personal_PC/configuration.nix
			nix-flatpak.nixosModules.nix-flatpak
			lanzaboote.nixosModules.lanzaboote
			 ];
		};
	};
}
