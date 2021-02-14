{ config, pkgs, ... }:

{ services.xserver =
  {
    enable = true;

    displayManager.autoLogin = {
      enable = true;

      user = "sugarfi";
    };
    
    windowManager.i3 = {
      enable = true;

      package = pkgs.i3-gaps;
      extraPackages = with pkgs; [ dmenu i3status ];
    };
  };
} 
