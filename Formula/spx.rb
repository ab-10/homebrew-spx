class Spx < Formula
  desc "CLI for scaffolding and deploying FastAPI backends to SPX"
  homepage "https://github.com/ab-10/spx"
  version "0.1.7"

  on_macos do
    on_arm do
      url "https://github.com/ab-10/spx/releases/download/v0.1.7/spx-0.1.7-aarch64-apple-darwin.tar.gz"
      sha256 "4046e99ee8a1092881594e49bf626c05d06225a944543af6393b0b7be9ecf359"
    end
    on_intel do
      url "https://github.com/ab-10/spx/releases/download/v0.1.7/spx-0.1.7-x86_64-apple-darwin.tar.gz"
      sha256 "88ed71aa2a8df216d85d8ce3edf1248951effbe87a3129f164183b682313a41b"
    end
  end

  def install
    bin.install "spx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/spx --version")
  end
end
