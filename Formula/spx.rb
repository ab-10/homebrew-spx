class Spx < Formula
  desc "CLI for scaffolding and deploying FastAPI backends to SPX"
  homepage "https://github.com/ab-10/spx"
  version "0.1.8"

  on_macos do
    on_arm do
      url "https://github.com/ab-10/spx/releases/download/v0.1.8/spx-0.1.8-aarch64-apple-darwin.tar.gz"
      sha256 "842d04fb8dc83bf5efbfb8303fadaa391384737f72039647518c9f74abae9da9"
    end
    on_intel do
      url "https://github.com/ab-10/spx/releases/download/v0.1.8/spx-0.1.8-x86_64-apple-darwin.tar.gz"
      sha256 "ec8b2390614f67cae55baf958a5dc93db79de4b737df12556c05c06674d734c7"
    end
  end

  def install
    bin.install "spx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/spx --version")
  end
end
