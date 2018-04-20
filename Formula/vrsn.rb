class Vrsn < Formula
  desc "Easy semantic and numerical revisioning"
  homepage "https://github.com/TwoRingSoft/Vrsnr"
  url "https://github.com/TwoRingSoft/Vrsnr/archive/2.0.2+b16.tar.gz"
  version "2.0.2"
  sha256 "d7d0a226197d031b0cfb910439c7472cfe66886bbc3e086d6d34e6ee0349cf50"

  depends_on :xcode => "9.3.0"

  def install
    system "make", "-B"
    prefix.install "Build/Build/Products/Release/vrsn"
    bin.install_symlink "#{prefix}/vrsn"
  end

  test do
    system "#{bin}/vrsn", "--help"
  end
end
