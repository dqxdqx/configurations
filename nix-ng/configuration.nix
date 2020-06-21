{
    lib
}:

{
    nix.binaryCaches = mkForce[ "https://mirrors.tuna.tsinghua.edu.cn/nix-channels/store" ];
    system.autoUpgrade.channel = "https://mirrors.tuna.tsinghua.edu.cn/nix-channels/nixos-20.03"

    imports =
        [
            ./hardware-configuration.nix

            ./hardware/hardware.nix
            ./base/base.nix
            ./editor/editor.nix
            ./lang/lang.nix
            ./localize/localize.nix
        ];
}