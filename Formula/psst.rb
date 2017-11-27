class Psst < Formula
  desc "Insert secrets into codebases that don't want to commit them to history."
  homepage "https://github.com/TwoRingSoft/psst"
  url "https://github.com/TwoRingSoft/psst/archive/1.0.0+1.tar.gz"
  sha256 "cb577db06ee8236672c1e4e3ca2707a0b8851ca4d35f1b74cf46a23629b3c7d7"

  def install
    prefix.install "psst"
  end

  test do
    system "psst", "--help"
  end
end
