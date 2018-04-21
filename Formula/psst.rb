class Psst < Formula
  desc "Insert secrets into codebases that don't want to commit them to history"
  homepage "https://github.com/TwoRingSoft/psst"
  url "https://github.com/TwoRingSoft/psst/archive/1.1.0.tar.gz"
  sha256 "3f96a89c3e12815f68308db867659511e62682956a3edf2e78f293808ae9039f"

  def install
    prefix.install "psst"
    bin.install_symlink "#{prefix}/psst"
  end

  test do
    system "#{bin}/psst", "--help"
  end
end
