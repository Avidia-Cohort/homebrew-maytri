class Maytri < Formula
  desc "Maytri CLI tool"
  homepage "https://github.com/Avidia-Cohort/maytri.cli"
  version "0.1.5"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.5/maytri-macos-amd64.tar.gz"
    sha256 "97d976f9ba4f3d49438722f0f4f37d2477bd3a95807f63001899489a1a88bfea"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.5/maytri-macos-arm64.tar.gz"
    sha256 "dd496efec8e47c8f579f70c1380143d276eb49627c777328829ca69af09d697c"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.5/maytri-linux-amd64.tar.gz"
    sha256 "21cff02ea7d8985e83e0c963df0eb640dc28019f0d6a4d95ec2486768a82ba56"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.5/maytri-linux-arm64.tar.gz"
    sha256 "ade2013941462df4a8df13777c2289a10a29d8e8940f7bda97acfe0500ef5a8b"
  end

  def install
    bin.install "maytri"
  end

  test do
    system "#{bin}/maytri", "--version"
  end
end
