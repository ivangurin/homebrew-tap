class Ccx < Formula
  desc "Switch Claude Code LLM providers"
  homepage "https://github.com/ivangurin/ccx"
  version "0.12.0"
  on_arm do
    url "https://github.com/ivangurin/ccx/releases/download/v#{version}/ccx-mac-arm64-v#{version}.zip"
    sha256 "45546ce735667b09d39147c3918c1198b726282198c7722ee6662a09c3c26706"
  end
  on_intel do
    url "https://github.com/ivangurin/ccx/releases/download/v#{version}/ccx-mac-amd64-v#{version}.zip"
    sha256 "f8678c2a0a8c4b206bf26c33f2bf158415ee5110f5f57d3145e17464cff6a0a8"
  end
  def install
    bin.install "ccx"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/ccx version")
  end
end
