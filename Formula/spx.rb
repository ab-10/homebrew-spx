class Spx < Formula
  desc "CLI for scaffolding and deploying FastAPI backends to SPX"
  homepage "https://github.com/ab-10/spx"
  version "0.2.1"

  on_macos do
    on_arm do
      url "https://github.com/ab-10/spx/releases/download/v0.2.1/spx-0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "101c81ce0bf7876041b36febc6e648ddc9618e037163874a8f2ea67b54c9dc16"
    end
    on_intel do
      url "https://github.com/ab-10/spx/releases/download/v0.2.1/spx-0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "2a43843e479f2712a25386b69ef58687cd1c38750c6485b71cdf7817a8949141"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ab-10/spx/releases/download/v0.2.1/spx-0.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0df5dd526d2372126dc2a8cb42ae905ccf34a536aaa64e5fe07ad7c788b20cda"
    end
  end

  def install
    bin.install "spx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/spx --version")
  end
end
