class Spx < Formula
  desc "CLI for scaffolding and deploying FastAPI backends to SPX"
  homepage "https://github.com/ab-10/spx"
  version "0.1.11"

  on_macos do
    on_arm do
      url "https://github.com/ab-10/spx/releases/download/v0.1.11/spx-0.1.11-aarch64-apple-darwin.tar.gz"
      sha256 "f35c53c8c3ed9e6a13ea3bf1b55e06790562f07088a5629452189edffcc2d630"
    end
    on_intel do
      url "https://github.com/ab-10/spx/releases/download/v0.1.11/spx-0.1.11-x86_64-apple-darwin.tar.gz"
      sha256 "d9df72a53895f11349139613dadc45eff82fe2796f009c45e77a8d513b5c46e8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ab-10/spx/releases/download/v0.1.11/spx-0.1.11-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7558de6ce73f60f64100129bc03a5e0543f7ca777e9955713d150bcd98787d2d"
    end
  end

  def install
    bin.install "spx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/spx --version")
  end
end
