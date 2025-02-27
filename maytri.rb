class Maytri < Formula
  desc "Maytri CLI tool"
  homepage "https://github.com/Avidia-Cohort/maytri.cli"
  version "0.1.6"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.6/maytri-macos-amd64.tar.gz"
    sha256 "d24b9577d664b728fbe6fb9b8d8d0e44023a1684769c62566801c50fee5a9482"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.6/maytri-macos-arm64.tar.gz"
    sha256 "c9b61a2d9e47d0cae666e287cfe503ce97975ebd7b6842f0a508cb86f3a0fccc"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.6/maytri-linux-amd64.tar.gz"
    sha256 "b05fc708e784d270632d9c6fc99fdcd0c61779de3e097db9eeb8d451a4d1edb8"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.6/maytri-linux-arm64.tar.gz"
    sha256 "59a4dfc7e7939ed5990c948003e2d3da05a9ab7bb6ece4350cd1f49ce2b24ba4"
  end

  def install
    bin.install "maytri"
  end

  test do
    system "#{bin}/maytri", "--version"
  end
end
