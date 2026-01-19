class Daikoku < Formula
  desc "Daikoku CLI"
  homepage "https://github.com/MAIF/daikoku/tree/master/cli"
  license any_of: ["MIT", "0BSD"]
  version "1.4.0"

  if Hardware::CPU.arm?
    url "https://github.com/MAIF/daikoku/releases/download/cli-1.4.0/daikoku-darwin-arm64"
    sha256 "15c740b318049d0efcddef8c65f89e2c068e96d71ac66bbb22e6876032779c51"
  else
    url "https://github.com/MAIF/daikoku/releases/download/cli-1.4.0/daikoku-darwin-amd64"
    sha256 "9427b4fdfae2f5f65ebc73d8a502e6da0d86cb2b52f1538e20e365364d8e2479"
  end

  def install
    bin.install "daikoku-darwin-#{Hardware::CPU.arm? ? 'arm64' : 'amd64'}" => "daikoku"
  end
end
