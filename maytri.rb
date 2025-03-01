class Maytri < Formula
  desc "Maytri CLI tool"
  homepage "https://github.com/Avidia-Cohort/maytri.cli"
  version "0.1.10"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.10/maytri-macos-amd64.tar.gz"
    sha256 "a1c8a35beb687612b286e5c4d745c2818a7ce44a8d64d638387ff81a1b04ddd8"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.10/maytri-macos-arm64.tar.gz"
    sha256 "cc5b2ef5eba757dfb5fbf46d7ab0a7e5a3ba74a5be4788c6051707c53fa70c5f"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.10/maytri-linux-amd64.tar.gz"
    sha256 "46d284878e7ae62d6b0c3b121702a3f85d7a1f4c186779a224fb97d075658344"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.10/maytri-linux-arm64.tar.gz"
    sha256 "d61116af2d1b81f2706978e2f3d96038eda724ec269d4bcdd473182e844afe0f"
  end

  def install
    bin.install "maytri"
  end

  test do
    system "#{bin}/maytri", "--version"
  end
end
