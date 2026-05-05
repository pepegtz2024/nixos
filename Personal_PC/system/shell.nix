{ pkgs, ... }: {
  programs.zsh = {
    enable = true;
};
users.users.pepegtz2024 = {
shell = pkgs.zsh;
};
}
