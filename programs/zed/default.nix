{
  enable = true;
  extensions = [
    "html"
    "emmet"
    "java"
    "nix"
  ];

  mutableUserDebug = true;
  mutableUserKeymaps = true;
  mutableUserSettings = true;
  mutableUserTasks = true;

  userKeymaps = import ./keymap.nix;
  userSettings = import ./settings.nix;
  userTasks = import ./tasks.nix;
}
