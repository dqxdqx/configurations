{ pkgs }:

{
    enviroment.systemPackages = with pkgs;
    [
        zsh
        firefox aria2 thunderbird

    ];
}