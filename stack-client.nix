{ lib, stdenv, fetchFromGitHub, pkg-config, cmake, extra-cmake-modules
, libsForQt5, sqlite, libsecret, libre-graph-api-cpp-qt-client
, kdsingleapplication, ninja }:

with lib;

stdenv.mkDerivation (finalAttrs: {
  pname = "stack-client";
  version = "v2.11.0";

  src = ./.;

  cmakeFlags = [ "-G Ninja" ];

  nativeBuildInputs = [
    pkg-config
    cmake
    extra-cmake-modules
    libsForQt5.qt5.qttools
    libsForQt5.qt5.wrapQtAppsHook
    ninja
  ];
  buildInputs = [
    sqlite
    libsecret
    libsForQt5.qt5.qtbase
    libsForQt5.qtkeychain
    libre-graph-api-cpp-qt-client
    kdsingleapplication
  ];
})
