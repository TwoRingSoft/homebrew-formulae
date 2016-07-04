class Semver < Formula
  desc "Easy semver and numerical revisioning"
  homepage "https://github.com/TwoRingSoft/semver"
  url "https://github.com/TwoRingSoft/semver/archive/1.0.0+b1.tar.gz"
  version "1.0.0"
  sha256 "ee9fc3199572dfe2ba69ee6177ea724e52861ccb5044844fcdc34abccef7fdff"

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
