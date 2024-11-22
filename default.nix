{...}:
let
  pkgs = import(fetchTarball https://releases.nixos.org/nixos/22.11/nixos-22.11.4773.ea4c80b39be4/nixexprs.tar.xz) {};
  set = pkgs.callPackages ./llvm {};

  inherit (rec {
    llvmPackagesSet = pkgs.lib.recurseIntoAttrs (pkgs.callPackages ./llvm { });

    # llvmPackages_13 = llvmPackagesSet."13";
    # llvmPackages_14 = llvmPackagesSet."14";
    # llvmPackages_15 = llvmPackagesSet."15";
    # llvmPackages_16 = llvmPackagesSet."16";
    # llvmPackages_17 = llvmPackagesSet."17";

    llvmPackages_18 = llvmPackagesSet."18";
    clang_18 = llvmPackages_18.clang;
    lld_18 = llvmPackages_18.lld;
    lldb_18 = llvmPackages_18.lldb;
    llvm_18 = llvmPackages_18.llvm;

    # llvmPackages_19 = llvmPackagesSet."19";
    # clang_19 = llvmPackages_19.clang;
    # lld_19 = llvmPackages_19.lld;
    # lldb_19 = llvmPackages_19.lldb;
    # llvm_19 = llvmPackages_19.llvm;
    # bolt_19 = llvmPackages_19.bolt;
  }) #llvmPackages_13
    # llvmPackages_14
    # llvmPackages_15
    # llvmPackages_16
    # llvmPackages_17
    clang_18
    llvmPackages_18;
  
    # clang_18
    # lld_18
    # lldb_18
    # llvm_18
    # llvmPackages_19
    # clang_19
    # lld_19
    # lldb_19
    # llvm_19
    # bolt_19;
in
  # llvmPackages_18.clang-unwrapped
  # llvmPackages_18.clang
# clang_18
  llvmPackages_18.tools
  # llvmPackages_18.llvm

