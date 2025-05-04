class Maytri < Formula
  desc "Maytri CLI tool"
  homepage "https://github.com/Avidia-Cohort/maytri.cli"
  version "0.2.22"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.2.22/maytri-macos-amd64.tar.gz"
    sha256 "4e9b73366a21e8a8ba00168647eacd49afee480168abd1b8c13e72581cd9aa6c"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.2.22/maytri-macos-arm64.tar.gz"
    sha256 "f9b11f25186085f3faacd763d856d3226474292cd373a888f7bc5e6a3dffaa00"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.2.22/maytri-linux-amd64.tar.gz"
    sha256 "4d0276e5e800e0e06893297a89a53021cd43554ca0fd88f94f9e849caf58fe59"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.2.22/maytri-linux-arm64.tar.gz"
    sha256 "547c3c2efb5a738a97eef5bbfa20666a24e6e8e2a530f14451d2c76c03811781"
  end

  def install
    bin.install "maytri"
  end

  test do
    system "#{bin}/maytri", "--version"
  end
end
