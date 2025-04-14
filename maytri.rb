class Maytri < Formula
  desc "Maytri CLI tool"
  homepage "https://github.com/Avidia-Cohort/maytri.cli"
  version "0.1.18"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.18/maytri-macos-amd64.tar.gz"
    sha256 "d0d115b4a888f3b08d8637026adfeb717a4468795754a035489269a98a7cb12e"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.18/maytri-macos-arm64.tar.gz"
    sha256 "3a1cb276a9d5d8ec70d76d61619a1f2fe612f7ac836f97dca5b1f02f5f1ed435"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.18/maytri-linux-amd64.tar.gz"
    sha256 "8fa9eee0c7c3026eae3a2db176bad88f9936c9cc1b29793cce93ca8af2dd968d"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.18/maytri-linux-arm64.tar.gz"
    sha256 "54b0b3aac33c81868c282bd1e73d33a8b1802e3fdbfd8205f5695984d2c30774"
  end

  def install
    bin.install "maytri"
  end

  test do
    system "#{bin}/maytri", "--version"
  end
end
