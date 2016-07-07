class Semver1_0_0 < Formula
  desc "Easy semver and numerical revisioning"
  homepage "https://github.com/TwoRingSoft/semver"
  url "https://github.com/TwoRingSoft/semver/archive/1.0.0+b1.tar.gz"
  version "1.0.0"
  sha256 "35b635862825b634688a99f164602212b6c5bb5cadfede4a680b141d1c4820e9"

  depends_on :xcode => "7.0"

  def install
    system "make", "-B"
    prefix.install "Build/Build/Products/Release/semver"
    bin.install_symlink "#{prefix}/semver"
  end

  test do
    system "#{bin}/semver", "--help"
  end
end
