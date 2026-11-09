class Ccx < Formula
  desc "Switch Claude Code LLM providers"
  homepage "https://github.com/ivangurin/ccx"
  version "v0.5.0"
  on_arm do
    url "https://github.com/ivangurin/ccx/releases/download/#{version}/ccx-mac-arm64-#{version}.zip"
    sha256 "6bb2de5933cf0be6746494d97d7d16252e9f1176c53e4c3261b665baaccb34f4"
  end
  on_intel do
    url "https://github.com/ivangurin/ccx/releases/download/#{version}/ccx-mac-amd64-#{version}.zip"
    sha256 "e386c582bbb919be9d6c9ec6f1ffa4835b2c214031e934d712498747ca21224e"
  end
  def install
    bin.install "ccx"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/ccx version")
  end
end
