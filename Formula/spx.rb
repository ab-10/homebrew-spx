class Spx < Formula
  desc "CLI for scaffolding and deploying FastAPI backends to SPX"
  homepage "https://github.com/ab-10/spx"
  version "0.1.14"

  on_macos do
    on_arm do
      url "https://github.com/ab-10/spx/releases/download/v0.1.14/spx-0.1.14-aarch64-apple-darwin.tar.gz"
      sha256 "d1b19fd85773ff88530feca8ecd486412f0ae3f65dfea30365d5fe5791b853f1"
    end
    on_intel do
      url "https://github.com/ab-10/spx/releases/download/v0.1.14/spx-0.1.14-x86_64-apple-darwin.tar.gz"
      sha256 "da162407736ba429d3e73e5f60d7fb2a4b4bcaa07c0edaccc01164e139150c24"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ab-10/spx/releases/download/v0.1.14/spx-0.1.14-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0a1e811c8c1f2cbcb27b50373ef0f84bcdb883089a8f443c4b456ece2eab76ca"
    end
  end

  def install
    bin.install "spx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/spx --version")
  end
end
