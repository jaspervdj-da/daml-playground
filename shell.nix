{
  pkgs ? import <nixpkgs> { },
}:
let
  java = pkgs.openjdk;
in
pkgs.mkShell rec {
  buildInputs = [
    java
  ];

  JAVA_HOME = "${java}";
}
