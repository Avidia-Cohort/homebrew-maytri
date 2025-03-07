class Maytri < Formula
  desc "Maytri CLI tool"
  homepage "https://github.com/Avidia-Cohort/maytri.cli"
  version "0.1.13"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.13/maytri-macos-amd64.tar.gz"
    sha256 "9bf41f58d72954794c81d60aac38d75da3bcd6fc6817539fa3a254bb895aec7b"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.13/maytri-macos-arm64.tar.gz"
    sha256 "cd5f9c6d26f62af4cda6147ada1d491376a6002278c2c6b31731680fbbabee59"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.13/maytri-linux-amd64.tar.gz"
    sha256 "e0a19c4fe97784da378b1383ba6a6e632fecbf9ed39a08ed348e60836323d1f5"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.13/maytri-linux-arm64.tar.gz"
    sha256 "e2638f8c803f5f4c381787afb3a9da78ea7c51d37a0dd12600ffa43efb2e7eb5"
  end

  def install
    bin.install "maytri"
  end

  test do
    system "#{bin}/maytri", "--version"
  end
end
