{...}: {
  programs.git = {
    enable = true;
    userName = "Bruno Claudino";
    userEmail = "bruarrais@gmail.com";
    signing = {
      key = "35386231585A5918";
      signByDefault = true;
    };
    aliases = {
      l = "log --pretty=format:'%C(yellow)%h%Creset %ad | %Cgreen%s%Creset %Cred%d%Creset %Cblue[%an]' --date=short";
      s = "status -s";
      c = "commit -m";
      cs = "commit -S -m";
    };
  };
}
