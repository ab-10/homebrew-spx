class Spx < Formula
  desc "CLI for scaffolding and deploying FastAPI backends to SPX"
  homepage "https://github.com/ab-10/spx"
  version "0.1.13"

  on_macos do
    on_arm do
      url "https://github.com/ab-10/spx/releases/download/v0.1.13/spx-0.1.13-aarch64-apple-darwin.tar.gz"
      sha256 "8ac57ade8b410ba3cc80c627df7c7820b99c00b26e31557ff667c1660ba41259"
    end
    on_intel do
      url "https://github.com/ab-10/spx/releases/download/v0.1.13/spx-0.1.13-x86_64-apple-darwin.tar.gz"
      sha256 "c2d29d0c7f7b66147c923121f4ade84b4ea6138c8503f020532a135b912e58fb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ab-10/spx/releases/download/v0.1.13/spx-0.1.13-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "abc350836a69b5b7be9a7b7229c50e37049bf40bfce3850900cfce39ef975a4e"
    end
  end

  def install
    bin.install "spx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/spx --version")
  end
end
