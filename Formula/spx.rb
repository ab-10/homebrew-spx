class Spx < Formula
  desc "CLI for scaffolding and deploying FastAPI apps to ephemeral previews"
  homepage "https://github.com/ab-10/spx"
  version "0.1.5"

  on_macos do
    on_arm do
      url "https://github.com/ab-10/spx/releases/download/v0.1.5/spx-0.1.5-aarch64-apple-darwin.tar.gz"
      sha256 "fab7aa5c80d0a93f298612e7809db76484d40ec92b51f7eb348fc7c345b054b7"
    end
    on_intel do
      url "https://github.com/ab-10/spx/releases/download/v0.1.5/spx-0.1.5-x86_64-apple-darwin.tar.gz"
      sha256 "fe1deab5650c13a75fd0fd0ec94682e0beeeb1f26652518df6b0004880d7bcc8"
    end
  end

  def install
    bin.install "spx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/spx --version")
  end
end
