class Spx < Formula
  desc "CLI for scaffolding and deploying FastAPI apps to ephemeral previews"
  homepage "https://github.com/ab-10/spx"
  version "0.1.4"

  on_macos do
    on_arm do
      url "https://github.com/ab-10/spx/releases/download/v0.1.4/spx-0.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "8a115210ad11526e89e76620272fed3f13145af24c4251094e119b8a76e648fa"
    end
    on_intel do
      url "https://github.com/ab-10/spx/releases/download/v0.1.4/spx-0.1.4-x86_64-apple-darwin.tar.gz"
      sha256 "7f3396a11237a2dbc1abd91c0a45c6acb19ef1224104fb321c62e5867b54cf99"
    end
  end

  def install
    bin.install "spx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/spx --version")
  end
end
