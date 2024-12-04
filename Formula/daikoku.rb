class Daikoku < Formula
  desc "Daikoku CLI"
  homepage "https://github.com/MAIF/daikoku/tree/master/cli"
  license any_of: ["MIT", "0BSD"]
  url "https://github.com/MAIF/daikoku/archive/refs/tags/cli-1.1.0.tar.gz"
  sha256 "0e6925d7e5b055535fc616f2c0a5284b7208a73cfc63f95bd7edb0d593e82940"
  version "1.1.0"

  depends_on "rust" => :build

  def install
    # system "cargo", "build", "--manifest-path=cli/Cargo.toml", "--release", "--bin", "daikoku"
    # bin.install "cli/target/release/daikoku"
    cd cli
    system "cargo", "install", *std_cargo_args
  end
end
