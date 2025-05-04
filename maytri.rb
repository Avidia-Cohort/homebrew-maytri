class Maytri < Formula
  desc "Maytri CLI tool"
  homepage "https://github.com/Avidia-Cohort/maytri.cli"
  version "0.1.24"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.24/maytri-macos-amd64.tar.gz"
    sha256 "aa64415d340fffe39a0a933734293b4262a7740d606e8169de07805c7df39015"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.24/maytri-macos-arm64.tar.gz"
    sha256 "dce2d3307ddb3d350d2f344e01d33d89fca93c266cac53c2b9ac5e14d3796d27"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.24/maytri-linux-amd64.tar.gz"
    sha256 "b193458f6b38fec3fa64102dbeb6c4ef5a9e2fd5c48137700e4654d2e97d715a"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.24/maytri-linux-arm64.tar.gz"
    sha256 "5e1b8492eded67b7c5d9f87bde873ad470ce65983a54fb6086874223ec03f25e"
  end

  def install
    bin.install "maytri"
  end

  test do
    system "#{bin}/maytri", "--version"
  end
end
