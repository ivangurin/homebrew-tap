class Ccx < Formula
  desc "Switch Claude Code LLM providers"
  homepage "https://github.com/ivangurin/ccx"
  version "0.9.0"
  on_arm do
    url "https://github.com/ivangurin/ccx/releases/download/v#{version}/ccx-mac-arm64-v#{version}.zip"
    sha256 "beaa4f2dca1410018dfbb687ffa7feeec62d6430eea0a4fd3bcac3db9b0afeb9"
  end
  on_intel do
    url "https://github.com/ivangurin/ccx/releases/download/v#{version}/ccx-mac-amd64-v#{version}.zip"
    sha256 "c9fb01b832507e1a4f16647b50386f8255dd5376ed5fd17f049479715b725917"
  end
  def install
    bin.install "ccx"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/ccx version")
  end
end
