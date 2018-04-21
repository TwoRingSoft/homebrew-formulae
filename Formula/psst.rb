class Psst < Formula
  desc "Insert secrets into codebases that don't want to commit them to history"
  homepage "https://github.com/TwoRingSoft/psst"
  url "https://github.com/TwoRingSoft/psst/archive/1.0.0+1.tar.gz"
  version "1.0.0"
  sha256 "68cbdc8c9318bf63dd6403034ca8388e0944e63b39e0981084e5547aaecb08e6"

  def install
    prefix.install "psst"
    bin.install_symlink "#{prefix}/psst"
  end
end
