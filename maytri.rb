class Maytri < Formula
  desc "Maytri CLI tool"
  homepage "https://github.com/Avidia-Cohort/maytri.cli"
  version "0.1.19"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.19/maytri-macos-amd64.tar.gz"
    sha256 "63c86e7e247e12b7df53ca9e912456306e377f0f388c3270a550ecff9d312169"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.19/maytri-macos-arm64.tar.gz"
    sha256 "f2901d7f53b68056d47dbd1572febeaa8b94e78bade168cab623a818e290582d"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.19/maytri-linux-amd64.tar.gz"
    sha256 "054745d0e02b976f1dcf502decf7a70475838f8f4e5aaad354f72ae70e554a1f"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.19/maytri-linux-arm64.tar.gz"
    sha256 "99011bb4176a9ec4405e79a70b4c7af5655b21df043851ba286acda27882d7a4"
  end

  def install
    bin.install "maytri"
  end

  test do
    system "#{bin}/maytri", "--version"
  end
end
