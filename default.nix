{ stdenv, lib, bundlerEnv, ruby_2_1, curl, nodejs, pygments, python }:

bundlerEnv {
  name = "iamtravis-jekyll-blog";

  ruby = ruby_2_1;
  gemfile = ./Gemfile;
  lockfile = ./Gemfile.lock;
  gemset = ./gemset.nix;

  buildInputs = [ curl ];
  propogatedUserEnvPkgs = [ nodejs python pygments ];
}
