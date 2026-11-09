class Ccx < Formula
  desc "Switch Claude Code LLM providers"
  homepage "https://github.com/ivangurin/ccx"
  version "v0.4.0"
  on_arm do
    url "https://github.com/ivangurin/ccx/releases/download/#{version}/ccx-mac-arm64-#{version}.zip"
    sha256 "4d9ca0346c9288d34c3a9121d1929f949ecc9f0490ec5e40730896a993fb53e3"
  end
  on_intel do
    url "https://github.com/ivangurin/ccx/releases/download/#{version}/ccx-mac-amd64-#{version}.zip"
    sha256 "b83d181b2e2b2832c537e9a6662213f092a38540b8104b17fbf8204a181c48cc"
  end
  def install
    bin "ccx"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/ccx version")
  end
end
