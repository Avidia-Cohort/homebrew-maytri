class Maytri < Formula
  desc "Maytri CLI tool"
  homepage "https://github.com/Avidia-Cohort/maytri.cli"
  version "0.1.22"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.22/maytri-macos-amd64.tar.gz"
    sha256 "06c9f71730dd881a6ffda6914a59183996168dde9b7961a5349ab3264e098437"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.22/maytri-macos-arm64.tar.gz"
    sha256 "59e3aa738d495be6a009544104e6c40f605ed40012881fb956e10226f8fc0923"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.22/maytri-linux-amd64.tar.gz"
    sha256 "e3363f322168befc4c49baef15b35ed8ee9b44f77b59c4b1da04ccd5cfe9a50e"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.22/maytri-linux-arm64.tar.gz"
    sha256 "752964a1adcfe0a03c4b94ac17ed12c835bb585097d4fda9a0ad8cd5ca68caae"
  end

  def install
    bin.install "maytri"
  end

  test do
    system "#{bin}/maytri", "--version"
  end
end
