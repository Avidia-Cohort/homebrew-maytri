class Maytri < Formula
  desc "Maytri CLI tool"
  homepage "https://github.com/Avidia-Cohort/maytri.cli"
  version "0.1.17"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.17/maytri-macos-amd64.tar.gz"
    sha256 "a6136e8fa0c17c835ac8a426c516d42a19956a4962af4338148f726bf7036cfa"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.17/maytri-macos-arm64.tar.gz"
    sha256 "1599ae97e5e5fd89b0d6354c4df2851d34b39f9d4bbc105e034f9dd13d70bd2e"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.17/maytri-linux-amd64.tar.gz"
    sha256 "1b5962f35823d1f65e62d252619ad8464a617f6abb38ad8214bdbc4a92c08a2f"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.17/maytri-linux-arm64.tar.gz"
    sha256 "e9925417f6fa663acc1fcea4184ff4868c489cf9594eb1d2b3feba50c3a0a97e"
  end

  def install
    bin.install "maytri"
  end

  test do
    system "#{bin}/maytri", "--version"
  end
end
