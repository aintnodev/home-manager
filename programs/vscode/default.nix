{ pkgs, ... }:

{
  enable = true;
  mutableExtensionsDir = true;
  profiles.default = {
    enableUpdateCheck = false;
    extensions = [ pkgs.vscode-extensions.pkief.material-icon-theme ];
    userSettings = {
      editor = {
        fontSize = 16;
        fontFamily = "'Cascadia Mono', monospace";
        wordWrap = "wordWrapColumn";
        bracketPairColorization.independentColorPoolPerBracketType = true;
      };

      files.autoSave = "onFocusChange";
      terminal.integrated.fontFamily = "'RobotoMono Nerd Font', monospace";
      github.copilot.nextEditSuggestions.enabled = true;

      workbench = {
        iconTheme = "material-icon-theme";
        colorCustomizations = null;
      };
    };
  };
}
