class Semver < Formula
  desc "Easy semver and numerical revisioning"
  homepage "https://github.com/TwoRingSoft/semver"
  url "https://github.com/TwoRingSoft/semver/archive/1.2.0+b11.tar.gz"
  version "1.2.0"
  sha256 "786e4d406fbd1776e9ea3d1efda575a9ee0bdb2c88425fcaac4c7715306db230"

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
