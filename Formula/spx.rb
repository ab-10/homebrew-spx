class Spx < Formula
  desc "CLI for scaffolding and deploying FastAPI apps to ephemeral previews"
  homepage "https://github.com/ab-10/spx"
  version "0.1.3"

  on_macos do
    on_arm do
      url "https://github.com/ab-10/spx/releases/download/v0.1.3/spx-0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "4c66b8714ebe3617fea3d3cb6b75c88bd9eb281e746ea67d1cca93f389e5cb91"
    end
    on_intel do
      url "https://github.com/ab-10/spx/releases/download/v0.1.3/spx-0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "8d7c7524149a3eb920520cd20a7d7d311f47abe999c2ee5ec7423326d4c96e27"
    end
  end

  def install
    bin.install "spx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/spx --version")
  end
end
