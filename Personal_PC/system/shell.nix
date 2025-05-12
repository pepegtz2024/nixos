{ pkgs, ... }: {
  programs.fish = {
    enable = true;
};
users.users.pepegtz2024 = {
shell = pkgs.fish;
};
}
