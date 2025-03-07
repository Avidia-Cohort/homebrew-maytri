class Maytri < Formula
  desc "Maytri CLI tool"
  homepage "https://github.com/Avidia-Cohort/maytri.cli"
  version "0.1.12"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.12/maytri-macos-amd64.tar.gz"
    sha256 "335e99c75c49c1764fa739d3f632206bed80cc3f4e0f693176258ce3a2fb614a"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.12/maytri-macos-arm64.tar.gz"
    sha256 "942aed73b3a0ae05ac0dacd1d5eb27df2f1861f827920596eaf7a1a4d1a4a829"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.12/maytri-linux-amd64.tar.gz"
    sha256 "5121726036070caef82a22b5cf370bdd81000adddeaa764f0af8bf844a934a32"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/Avidia-Cohort/maytri-releases/releases/download/v0.1.12/maytri-linux-arm64.tar.gz"
    sha256 "7868f077c7df450365de2ff7e2a7a39613a488b718e85fb6df52b8a95faeb818"
  end

  def install
    bin.install "maytri"
  end

  test do
    system "#{bin}/maytri", "--version"
  end
end
