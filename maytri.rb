class Maytri < Formula
  desc "Maytri CLI tool"
  homepage "https://github.com/Avidia-Cohort/maytri.cli"
  version "0.1.15"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.15/maytri-macos-amd64.tar.gz"
    sha256 "46626fd740e53dc3d1f3011f8f9c9f66bfc682c461fbf0aebee264830e4ac908"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.15/maytri-macos-arm64.tar.gz"
    sha256 "c46139facee84a729fef55a888295a8a171ecc23b293187df71ddc0916d523d2"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.15/maytri-linux-amd64.tar.gz"
    sha256 "12eac566ad66118e4ec9089cb49de967039cf2c861db00382dce2e80722ccf9a"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.15/maytri-linux-arm64.tar.gz"
    sha256 "0def760ecab6ac794c36075773d68d4f153529870fcf7f2eb237bfc03a32f345"
  end

  def install
    bin.install "maytri"
  end

  test do
    system "#{bin}/maytri", "--version"
  end
end
