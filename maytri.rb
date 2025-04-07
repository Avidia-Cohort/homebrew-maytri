class Maytri < Formula
  desc "Maytri CLI tool"
  homepage "https://github.com/Avidia-Cohort/maytri.cli"
  version "0.1.16"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.16/maytri-macos-amd64.tar.gz"
    sha256 "9c4d6565f43bc7bbdd50f9dca691d1ecca85a7394fcd8186ad0908085f2384f9"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.16/maytri-macos-arm64.tar.gz"
    sha256 "e1b3454c82705fe56c6fdd3d9d68b45b9809f706d16747182fedae8093bfb520"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.16/maytri-linux-amd64.tar.gz"
    sha256 "22dca90607082f10c0368db59fcab36c22a5ddb18acbcb02e2786129742df1b8"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.16/maytri-linux-arm64.tar.gz"
    sha256 "406c159f3fbbeee5d7d54535982989048a591c7ed40f37e279ff6e6c867c2ced"
  end

  def install
    bin.install "maytri"
  end

  test do
    system "#{bin}/maytri", "--version"
  end
end
