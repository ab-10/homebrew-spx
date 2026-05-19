class Spx < Formula
  desc "CLI for scaffolding and deploying FastAPI backends to SPX"
  homepage "https://github.com/ab-10/spx"
  version "0.1.6"

  on_macos do
    on_arm do
      url "https://github.com/ab-10/spx/releases/download/v0.1.6/spx-0.1.6-aarch64-apple-darwin.tar.gz"
      sha256 "7c2a7d250edf1ce4c1a1791eebf7ad15b02314de8cbc00315c62fce8bcd87793"
    end
    on_intel do
      url "https://github.com/ab-10/spx/releases/download/v0.1.6/spx-0.1.6-x86_64-apple-darwin.tar.gz"
      sha256 "956e23d2497666048f4b339b505c01e75e65539076151008a20b4f3dd85650cb"
    end
  end

  def install
    bin.install "spx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/spx --version")
  end
end
