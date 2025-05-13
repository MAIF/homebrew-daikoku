class Daikoku < Formula
  desc "Daikoku CLI"
  homepage "https://github.com/MAIF/daikoku/tree/master/cli"
  license any_of: ["MIT", "0BSD"]
  url "https://github.com/MAIF/daikoku/archive/refs/tags/cli-1.3.0.tar.gz"
  sha256 "08d03866ee22ff8c9ecb94d4d3bbfcf236e8b56284d85920dfc687e13aa57569"
  version "1.3.0"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--manifest-path=cli/Cargo.toml", "--release", "--bin", "daikoku"
    bin.install "cli/target/release/daikoku"
  end
end
