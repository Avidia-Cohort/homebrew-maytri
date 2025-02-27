class Maytri < Formula
  desc "Maytri CLI tool"
  homepage "https://github.com/Avidia-Cohort/maytri.cli"
  version "0.1.8"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.8/maytri-macos-amd64.tar.gz"
    sha256 "203862004f00e5b70be77bae6f20f6faba7b5f04773370ef823d4e259edab7bf"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.8/maytri-macos-arm64.tar.gz"
    sha256 "27f4693842a5f5fe373ce6ae0e5842399895995001e67c49f4daa041b8d603ff"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.8/maytri-linux-amd64.tar.gz"
    sha256 "12084f0b7b440828f7ff2889654027be9be5aa17f25d313c6e6553c090f90e07"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.8/maytri-linux-arm64.tar.gz"
    sha256 "a5a10aede3160ea0d2eeca6a12d84e6e0903ce28cca6e3cfc30c84d1d282cba3"
  end

  def install
    bin.install "maytri"
  end

  test do
    system "#{bin}/maytri", "--version"
  end
end
