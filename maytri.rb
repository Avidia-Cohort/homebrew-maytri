class Maytri < Formula
  desc "Maytri CLI tool"
  homepage "https://github.com/Avidia-Cohort/maytri.cli"
  version "0.1.9"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.9/maytri-macos-amd64.tar.gz"
    sha256 "4d1e237109b170d07cdc20b60447772b3f7801da04c295a59687339777397c95"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.9/maytri-macos-arm64.tar.gz"
    sha256 "6adb60dfb0caab25b96faf3b923c651681315b016ae608fcf3acb1ef1df57f49"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.9/maytri-linux-amd64.tar.gz"
    sha256 "05958ef2a7a5c7779a0536d93e84b5d5ff512c654391f52e1061d9a3818c6fb5"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.9/maytri-linux-arm64.tar.gz"
    sha256 "97d0ea61f1bd7c1761e3adfd196d48469fbae773cd33969b7a0b8ff9093ca6c5"
  end

  def install
    bin.install "maytri"
  end

  test do
    system "#{bin}/maytri", "--version"
  end
end
