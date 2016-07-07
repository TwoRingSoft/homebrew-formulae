class Semver < Formula
  desc "Easy semver and numerical revisioning"
  homepage "https://github.com/TwoRingSoft/semver"
  url "https://github.com/TwoRingSoft/semver/archive/1.1.0+b6.tar.gz"
  version "1.1.0"
  sha256 "a8b2b3dced0ffdf53c026a01ddd24ca514ba17ce94611465ed22e31e637d696b"

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