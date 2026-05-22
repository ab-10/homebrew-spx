class Spx < Formula
  desc "CLI for scaffolding and deploying FastAPI backends to SPX"
  homepage "https://github.com/ab-10/spx"
  version "0.1.10"

  on_macos do
    on_arm do
      url "https://github.com/ab-10/spx/releases/download/v0.1.10/spx-0.1.10-aarch64-apple-darwin.tar.gz"
      sha256 "e6679c23662343d49ced60a975c8482a15931d9714d3e9035aa50c4d1c421517"
    end
    on_intel do
      url "https://github.com/ab-10/spx/releases/download/v0.1.10/spx-0.1.10-x86_64-apple-darwin.tar.gz"
      sha256 "a04922037fb547b5ff9ce59fc08f7431ae93b370683893180b19c7489236ec18"
    end
  end

  def install
    bin.install "spx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/spx --version")
  end
end
