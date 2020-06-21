{ config, pkgs, lib, ... }

{
    nix.binaryCaches = mkForce[ "https://mirrors.tuna.tsinghua.edu.cn/nix-channels/store" ];
    # ?channels

    imports =
        [   
            ./hardware.nix
            ./graphics.nix
            ./fonts.nix

            ./lang
            ./sh
            ./editiors

            ./users
            ./hardware-configuration.nix

            ./localize
        ]

    enviroment.systemPackages = with pkgs;
        [
            zsh
            aria2 firefox
            fcitx-rime sarasa-gothic
            pandoc texlive
            emacs vscode
            stack idris haskellPackages.Agda 
            coq racket clang 
            dotnetcore fsharp fstar
            yarn
        ];
    # ?typescript agda stack racket-cs
    # ?non-free
    
    users.users.dqx =
    {
        isNormalUser = true;
        home = "home/dqx";
        extraGroups = [ "wheel" "networkmanager"];
    }
    # ?passwd

    services.xserver.enable = true;
    services.xserver.desktopManager.plasma5.enable
    networking.networkmanager.enable = true
    # ?WiFi profile

    boot.loader.systemd-boot.enable = true;
}