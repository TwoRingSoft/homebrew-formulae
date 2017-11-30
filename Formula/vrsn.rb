class Vrsn < Formula
  desc "Easy semantic and numerical revisioning"
  homepage "https://github.com/TwoRingSoft/Vrsnr"
  url "https://github.com/TwoRingSoft/Vrsnr/archive/2.0.1+b15.tar.gz"
  version "2.0.1"
  sha256 "b37896c0613999d85753eeef16b3e9399d77f283d2390844dc064b178a848c14"

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
