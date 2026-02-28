{
  enable = true;
  interactiveShellInit = builtins.readFile ./config.fish;

  functions = {
    nixp = builtins.readFile ./functions/nixp.fish;
    sudo = builtins.readFile ./functions/sudo.fish;
    ytd = builtins.readFile ./functions/ytd.fish;
    za = builtins.readFile ./functions/za.fish;
  };

  shellAliases = {
    # alias for common commands
    nrb = "sudo nixos-rebuild boot --flake ~/.config/home-manager";
    nrs = "sudo nixos-rebuild switch --flake ~/.config/home-manager";
    nfu = "sudo nix flake update --flake ~/.config/home-manager";
    ncg = "nix-collect-garbage -d";

    gi = "curl -sL https://www.gitignore.io/api/$argv";
    su = "command su --shell=/usr/bin/fish $argv";
    ls = "eza";
    ll = "eza -al";
    cat = "bat --style=plain --paging=never";
    tree = "eza --tree --git-ignore --all";
    wget = "wget --hsts-file=$XDG_DATA_HOME/wget-hsts";
    top = "btop --force-utf";

    # application aliases
    se = "sudoedit";
    vs = "visudo";
    mc = "macchina";
    live = "live-server --open --port 8080 --host 127.0.0.1";
    trp = "trash-put";
    trr = "trash-restore";
    zn = "zellij -l welcome";

    # flatpaks
    gearlever = "flatpak run it.mijorus.gearlever";

    # git aliases
    gst = "git status";
    gc = "git commit";
    ga = "git add";
    gpl = "git pull";
    gpom = "git pull origin main";
    gpu = "git push";
    gpuom = "git push origin main";
    gd = "git diff";
    gch = "git checkout";
    gnb = "git checkout -b";
    gac = "git add . && git commit";
    grs = "git restore --staged .";
    gre = "git restore";
    gr = "git remote";
    gcl = "git clone";
    glg = "git log --decorate=full --graph --abbrev-commit";
    gt = "git ls-tree -r main --name-only";
    grm = "git remote";
    gb = "git branch";
    gf = "git fetch";
  };
}
