class Spx < Formula
  desc "CLI for scaffolding and deploying FastAPI backends to SPX"
  homepage "https://github.com/ab-10/spx"
  version "0.1.12"

  on_macos do
    on_arm do
      url "https://github.com/ab-10/spx/releases/download/v0.1.12/spx-0.1.12-aarch64-apple-darwin.tar.gz"
      sha256 "d917473cdee4a1ab6c2315d703d426dabdf2af5a4f3ba901b544c2c148312261"
    end
    on_intel do
      url "https://github.com/ab-10/spx/releases/download/v0.1.12/spx-0.1.12-x86_64-apple-darwin.tar.gz"
      sha256 "d3f77a9f5296280683e5f7681c7d707b70d2293a3dceb6f8a4230311a9e30bb4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ab-10/spx/releases/download/v0.1.12/spx-0.1.12-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cd0cf730a04e0a2b4ab9aaf35cfad1ee030fe2ddbab4088fb303a437f3e48823"
    end
  end

  def install
    bin.install "spx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/spx --version")
  end
end
