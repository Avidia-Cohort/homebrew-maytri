class Maytri < Formula
  desc "Maytri CLI tool"
  homepage "https://github.com/Avidia-Cohort/maytri.cli"
  version "0.1.20"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.20/maytri-macos-amd64.tar.gz"
    sha256 "27b1df0f23a9c39359668839c15414f1586817b9facd546a81e0d8cc858ffe00"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.20/maytri-macos-arm64.tar.gz"
    sha256 "a48fe55d892fa97c82dd0e5c27d7a1cf0435162ec1fce521902d58cc2e672f92"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.20/maytri-linux-amd64.tar.gz"
    sha256 "c6a207acc3b74ef597a56e4137dce1bc3b55b1f31308c1c435f356836620b858"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.20/maytri-linux-arm64.tar.gz"
    sha256 "a4da15beb9c8c3fd6a2414c6d3f36f9bcef9ea7b9a6d2a508dc179b38f94fc77"
  end

  def install
    bin.install "maytri"
  end

  test do
    system "#{bin}/maytri", "--version"
  end
end
