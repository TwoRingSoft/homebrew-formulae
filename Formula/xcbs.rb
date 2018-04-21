class Xcbs < Formula
  desc "Extra checks for your Xcode project"
  homepage "https://github.com/TwoRingSoft/xcbs"
  url "https://github.com/TwoRingSoft/xcbs/archive/1.0.1.tar.gz"
  version "1.0.1"
  sha256 "1d206749c5986b9d37abc0fe35fe11b8d2e3d2e2d38a8c0daf2f13f48dd5b81e"

  def install
    bin.install "scripts/list-configurations.rb"
    bin.install "scripts/xcbs"
    bin.install "lib/settings-to-unexpand"
    ln_sf "#{bin}/list-configurations.rb", "/usr/local/bin/list-configurations.rb"
    ln_sf "#{bin}/xcbs", "/usr/local/bin/xcbs"
    ln_sf "#{bin}/settings-to-unexpand", "/usr/local/bin/settings-to-unexpand"
  end

  test do
    system "#{sbin}/xcbs", "--help"
  end
end
