class Vrsn < Formula
  desc "Easy semantic and numerical revisioning"
  homepage "https://github.com/TwoRingSoft/Vrsnr"
  url "https://github.com/TwoRingSoft/Vrsnr/archive/2.1.0.tar.gz"
  version "2.1.0"
  sha256 "084452d232763639e802340c9a0459e430e80485bb050007090580d8e867ef08"
  head "https://github.com/tworingsoft/Vrsnr.git"

  depends_on :xcode => "10.0.0"

  def install
    system "make", "-B"
    prefix.install "Build/Build/Products/Release/vrsn"
    bin.install_symlink "#{prefix}/vrsn"
  end

  test do
    system "#{bin}/vrsn", "--help"
  end
end
