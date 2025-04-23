class Maytri < Formula
  desc "Maytri CLI tool"
  homepage "https://github.com/Avidia-Cohort/maytri.cli"
  version "0.1.21"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.21/maytri-macos-amd64.tar.gz"
    sha256 "8761e13cd502e4876b09423fe99d57e42fe5f70992f738d55103846dd9d652da"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.21/maytri-macos-arm64.tar.gz"
    sha256 "1665aaac0f7eb316d667d11ba0953c712176579749aa331ca1132bf5d1e8ed92"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.21/maytri-linux-amd64.tar.gz"
    sha256 "954118f3d30215427d1a53f9fc4e7649d4dee158b370f81c626189028a974b4e"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.21/maytri-linux-arm64.tar.gz"
    sha256 "2542b72298c3e4b0d4ebcdb35d801912451843e21037913c257534377b48bc56"
  end

  def install
    bin.install "maytri"
  end

  test do
    system "#{bin}/maytri", "--version"
  end
end
