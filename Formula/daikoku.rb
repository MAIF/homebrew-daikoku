class Daikoku < Formula
  desc "Daikoku CLI"
  homepage "https://github.com/MAIF/daikoku/tree/master/cli"
  license any_of: ["MIT", "0BSD"]
  url "https://github.com/MAIF/daikoku/archive/refs/tags/cli-1.0.0.tar.gz"
  sha256 "8fefed875fa48e9fa2de1ee6d864e9baa93ad2b557f42ea35bad1343034adde8"
  version "1.0.0"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--manifest-path=cli/Cargo.toml", "--release", "--bin", "daikoku"
    bin.install "cli/target/release/daikoku"
  end
end
