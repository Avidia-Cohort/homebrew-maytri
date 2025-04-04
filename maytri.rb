class Maytri < Formula
  desc "Maytri CLI tool"
  homepage "https://github.com/Avidia-Cohort/maytri.cli"
  version "0.1.14"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.14/maytri-macos-amd64.tar.gz"
    sha256 "793eb8dc0f5860f9a611f59e5f92f341e7f0f46de9f328e0f0bf9a4d8e8f5da9"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.14/maytri-macos-arm64.tar.gz"
    sha256 "a57406818ae93ec1a9f3ba0e7edf8b4f5ff3acb19f348495fd575aff602da3fb"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.14/maytri-linux-amd64.tar.gz"
    sha256 "fd1f77ff0e8e794962d49afd714c35966824cbf266ee7a090e545bb500847e01"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.14/maytri-linux-arm64.tar.gz"
    sha256 "1e2052d9f38d14ddde3aeefc9ddb94cbcbee6d4bb39e6e6870b18a687f02f8cd"
  end

  def install
    bin.install "maytri"
  end

  test do
    system "#{bin}/maytri", "--version"
  end
end
