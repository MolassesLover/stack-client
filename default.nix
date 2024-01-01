{ pkgs ? import <nixpkgs> { } }: pkgs.callPackage ./stack-client.nix { }
