class Spx < Formula
  desc "CLI for scaffolding and deploying FastAPI backends to SPX"
  homepage "https://github.com/ab-10/spx"
  version "0.2.2"

  on_macos do
    on_arm do
      url "https://github.com/ab-10/spx/releases/download/v0.2.2/spx-0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "94064cce42c552fc6fc0e3fc910a920665bbe5a350e756bec6a702adf33959ca"
    end
    on_intel do
      url "https://github.com/ab-10/spx/releases/download/v0.2.2/spx-0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "0a129bb3c408436e7cf765de2183885d7ffe0ccde1e4e476a63e37c1b923b77f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ab-10/spx/releases/download/v0.2.2/spx-0.2.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5e5ea4c62860336cad18d578619db090cd745b19602652dfc69296adc8ff10df"
    end
  end

  def install
    bin.install "spx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/spx --version")
  end
end
