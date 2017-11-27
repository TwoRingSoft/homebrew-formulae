class Psst < Formula
  desc "Insert secrets into codebases that don't want to commit them to history."
  homepage "https://github.com/TwoRingSoft/psst"
  url "https://github.com/TwoRingSoft/psst/archive/1.0.0+1.tar.gz"
  sha256 "d3a0fa9bd380884061392476f5742251ccf0de0efd4c8840e8d09a9eeb1fba6a"
  version "1.0.0"

  def install
    prefix.install "psst"
    bin.install_symlink "#{prefix}/psst"
  end
end
