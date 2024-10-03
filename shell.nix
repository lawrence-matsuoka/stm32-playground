# Adapted from https://dnedic.github.io/blog/nix-shell-embedded-development-environment/

{ pkgs ? import <nixpkgs> { } }:

#let
#  pkgs = import (builtins.fetchTarball {
#    url = "https://github.com/NixOS/nixpkgs/archive/976fa3369d722e76f37c77493d99829540d43845.tar.gz";
#  }) {};
#  pkgs_arm_gcc = import (builtins.fetchTarball {
#    url = "https://github.com/NixOS/nixpkgs/archive/b0f0b5c6c021ebafbd322899aa9a54b87d75a313.tar.gz";
#  }) {};

#in 
pkgs.mkShell
{
  nativeBuildInputs = with pkgs; [
    gcc-arm-embedded
    openocd

    clang-tools
    clang

    cmake
    gnumake
    bear
  ];
}
