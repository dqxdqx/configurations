{ pkgs ? import <nixpkgs> {} };

let
    myEmacs = pkgs.emacs;
    emacsWithPackages = (pkgs.emacsPackagesGen myEmacs).emacsWithPackages;
in
emacsWithPackages ()

# ?proof general
# ?agda
# ?haskell
# ?idris
# ?fstar
# ?racket