{...}:
let
  pkgs = import(fetchTarball https://releases.nixos.org/nixos/22.11/nixos-22.11.4773.ea4c80b39be4/nixexprs.tar.xz) {};
  set = pkgs.callPackages ./llvm {};

  inherit (rec {
    llvmPackagesSet = pkgs.lib.recurseIntoAttrs (pkgs.callPackages ./llvm { });

    llvmPackages_18 = llvmPackagesSet."18";
    llvmPackages_19 = llvmPackagesSet."19";
  })
    llvmPackages_18
    llvmPackages_19;
in
  llvmPackages_18.clang

