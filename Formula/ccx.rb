class Ccx < Formula
  desc "Switch Claude Code LLM providers"
  homepage "https://github.com/ivangurin/ccx"
  version "v0.4.0"
  on_arm do
    url "https://github.com/ivangurin/ccx/releases/download/#{version}/ccx-mac-arm64-#{version}.zip"
    sha256 "99f69587be01d1df58e3e6da7f999f8d0ad7cfd171828337b69f65b9e21a58b0"
  end
  on_intel do
    url "https://github.com/ivangurin/ccx/releases/download/#{version}/ccx-mac-amd64-#{version}.zip"
    sha256 "677fc5445e6ea447ec38dffefcd0cffa251ed3af7fc8438a5903259342f6fc87"
  end
  def install
    bin.install "ccx"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/ccx version")
  end
end
