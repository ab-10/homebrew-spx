class Spx < Formula
  desc "CLI for scaffolding and deploying FastAPI apps to ephemeral previews"
  homepage "https://github.com/ab-10/spx"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/ab-10/spx/releases/download/v0.1.1/spx-0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "25fd7165bade7ac9842dc9f828425223c6c9fd3d8075f298182067285ff1f74c"
    end
    on_intel do
      url "https://github.com/ab-10/spx/releases/download/v0.1.1/spx-0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "eb500f12082d92bad38fceced27d3bf18efd4ad67be7aae1c49bd1bae87f6a31"
    end
  end

  def install
    bin.install "spx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/spx --version")
  end
end
