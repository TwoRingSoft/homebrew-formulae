class Vrsn < Formula
  desc "Easy semantic and numerical revisioning"
  homepage "https://github.com/TwoRingSoft/Vrsnr"
  url "https://github.com/TwoRingSoft/Vrsnr/archive/1.2.2+b13.tar.gz"
  version "2.0.0"
  sha256 "7cd27b272e53f8186407bad28af1c0ee4902f835e09eadcd3b36f2d291e29af5"

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
