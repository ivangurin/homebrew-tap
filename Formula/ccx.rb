class Ccx < Formula
  desc "Switch Claude Code LLM providers"
  homepage "https://github.com/ivangurin/ccx"
  version "0.10.0"
  on_arm do
    url "https://github.com/ivangurin/ccx/releases/download/v#{version}/ccx-mac-arm64-v#{version}.zip"
    sha256 "6dac7f4770ae01ff3cd824e0f8272217945cef6bdd20a12839bdabe0fb6e162e"
  end
  on_intel do
    url "https://github.com/ivangurin/ccx/releases/download/v#{version}/ccx-mac-amd64-v#{version}.zip"
    sha256 "941486a6f4adbfa007b7829b603b1f370729428872a951783e92b543718871f5"
  end
  def install
    bin.install "ccx"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/ccx version")
  end
end
