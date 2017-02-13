class Xcdanger < Formula
  desc "Extra checks for your Xcode project"
  homepage "https://github.com/TwoRingSoft/xcdanger"
  url "https://github.com/TwoRingSoft/xcdanger/archive/1.0.0+b1.tar.gz"
  version "1.0.0"
  sha256 "a48d8ec8290ab680847c158f1d0fd2bbf3a57450bbfc4ecca39ce062522081f3"

  def install
    bin.install_symlink "#{prefix}/xcdanger"
  end

  test do
    system "#{bin}/xcdanger", "--help"
  end
end
