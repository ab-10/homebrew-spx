class Spx < Formula
  desc "CLI for scaffolding and deploying FastAPI apps to ephemeral previews"
  homepage "https://github.com/ab-10/spx"
  version "0.1.2"

  on_macos do
    on_arm do
      url "https://github.com/ab-10/spx/releases/download/v0.1.2/spx-0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "b1c961464ba76196e7194d0526b454f590c1f3e3b48e340cf0579adc42e15f38"
    end
    on_intel do
      url "https://github.com/ab-10/spx/releases/download/v0.1.2/spx-0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "99ed47af3596946f32a048d225610ce0d7e8046e6d88759a204b6a9f1a9d4d91"
    end
  end

  def install
    bin.install "spx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/spx --version")
  end
end
