class Spx < Formula
  desc "CLI for scaffolding and deploying FastAPI backends to SPX"
  homepage "https://github.com/ab-10/spx"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/ab-10/spx/releases/download/v0.2.0/spx-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "246aaf001ee5a37d7b9df1ebaf64f830e3ed09424e84eb6e83898d576ab6b2b5"
    end
    on_intel do
      url "https://github.com/ab-10/spx/releases/download/v0.2.0/spx-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "b034f6084c0e060a154c238419706d010351c8fee332845d2649bd8cd41ae382"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ab-10/spx/releases/download/v0.2.0/spx-0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "30163cd71a728f3997c9e8cfadbf9a7783124e4e4af8a31d77550bd69d9aa6ca"
    end
  end

  def install
    bin.install "spx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/spx --version")
  end
end
