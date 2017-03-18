class Vrsn < Formula
  desc "Easy semantic and numerical revisioning"
  homepage "https://github.com/TwoRingSoft/Vrsnr"
  url "https://github.com/TwoRingSoft/Vrsnr/archive/2.0.0+b14.tar.gz"
  version "2.0.0"
  sha256 "0ae6c2f4320821346ffdc2993abfa80421e593466ce74d1f91fc883c7fc69109"

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
