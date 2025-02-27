class Maytri < Formula
  desc "Maytri CLI tool"
  homepage "https://github.com/Avidia-Cohort/maytri.cli"
  version "0.1.7"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.7/maytri-macos-amd64.tar.gz"
    sha256 "9c7b32a2a496a65fb487bad98ad50f52a07e73cca30a25563eeaa4fbbb1b39a7"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.7/maytri-macos-arm64.tar.gz"
    sha256 "bee0677b14c8bb715226b82e9df3acee0d39e84618e38cbacacdaff3b997cb49"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.7/maytri-linux-amd64.tar.gz"
    sha256 "e8f0446f78e2c9a651663b064e613ca1b9641cc978fdd198fc608b9c4a8481d8"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.7/maytri-linux-arm64.tar.gz"
    sha256 "8bbcb6318c660e27c865053a65f2721792fc9df3c40208bcd9d1533d0d3309f8"
  end

  def install
    bin.install "maytri"
  end

  test do
    system "#{bin}/maytri", "--version"
  end
end
