class Daikoku < Formula
  desc "Daikoku CLI"
  homepage "https://github.com/MAIF/daikoku/tree/master/cli"
  license any_of: ["MIT", "0BSD"]
  url "https://github.com/MAIF/daikoku/archive/refs/tags/cli-1.4.0.tar.gz"
  sha256 "84bb5fac4c6321c70386fc43c055d0bde58773098955d09bafe6a07ed11d4089"
  version "1.4.0"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--manifest-path=cli/Cargo.toml", "--release", "--bin", "daikoku"
    bin.install "cli/target/release/daikoku"
  end
end
