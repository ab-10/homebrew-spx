class Spx < Formula
  desc "CLI for scaffolding and deploying FastAPI backends to SPX"
  homepage "https://github.com/ab-10/spx"
  version "0.1.9"

  on_macos do
    on_arm do
      url "https://github.com/ab-10/spx/releases/download/v0.1.9/spx-0.1.9-aarch64-apple-darwin.tar.gz"
      sha256 "742c73a80870097e8e69ba5ab36d664dcec6cc2a8341ca8b78e4be46562a6bdc"
    end
    on_intel do
      url "https://github.com/ab-10/spx/releases/download/v0.1.9/spx-0.1.9-x86_64-apple-darwin.tar.gz"
      sha256 "d2a33451249e42c56b05c924edd62e11538f314c88a0b199f486490a7b1c4161"
    end
  end

  def install
    bin.install "spx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/spx --version")
  end
end
