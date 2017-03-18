class Semver < Formula
  desc "Easy semver and numerical revisioning"
  homepage "https://github.com/TwoRingSoft/semver"
  url "https://github.com/TwoRingSoft/semver/archive/1.2.2+b13.tar.gz"
  version "1.2.2"
  sha256 "a48d8ec8290ab680847c158f1d0fd2bbf3a57450bbfc4ecca39ce062522081f3"

  depends_on :xcode => "8.2"

  def install
    system "make", "-B"
    prefix.install "Build/Build/Products/Release/semver"
    bin.install_symlink "#{prefix}/semver"
  end

  test do
    system "#{bin}/semver", "--help"
  end
end
