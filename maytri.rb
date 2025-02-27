class Maytri < Formula
  desc "Maytri CLI tool"
  homepage "https://github.com/Avidia-Cohort/maytri.cli"
  version "0.1.2"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Avidia-Cohort/maytri.cli/releases/download/v0.1.2/maytri-macos-amd64.tar.gz"
    sha256 "b7594ef7b9cc9ed3d53789130e0bce636a52b037be3134d711b19262782bf5ae"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Avidia-Cohort/maytri.cli/releases/download/v0.1.2/maytri-macos-arm64.tar.gz"
    sha256 "3a1bd8e70338b713e89b42d380287d1cfd5e2a772afbf8a9f7da0345a64b8527"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Avidia-Cohort/maytri.cli/releases/download/v0.1.2/maytri-linux-amd64.tar.gz"
    sha256 "56e5aa7bd48363d2a1f390f0a0ee4c2342c12103cbb6e0be9c98cfc8b2125e21"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/Avidia-Cohort/maytri.cli/releases/download/v0.1.2/maytri-linux-arm64.tar.gz"
    sha256 "81f62b1ca47b47c0fb0c44ed9661e6c7ed8547eb23d57c2464aa5c41c7f57c39"
  end

  def install
    bin.install "maytri"
  end

  test do
    system "#{bin}/maytri", "--version"
  end
end
