class Vrsn < Formula
  desc "Easy semantic and numerical revisioning"
  homepage "https://github.com/TwoRingSoft/Vrsnr"
  url "https://github.com/TwoRingSoft/Vrsnr/archive/2.0.1+b15.tar.gz"
  version "2.0.1"
  sha256 "5eeaf5509cb3e8450bcf27b3f8920058806c995870b6853de72451fb9a0368e5"

  depends_on :xcode => "8.2.1"

  def install
    system "make", "-B"
    prefix.install "Build/Build/Products/Release/vrsn"
    bin.install_symlink "#{prefix}/vrsn"
  end

  test do
    system "#{bin}/vrsn", "--help"
  end
end
