class Ccx < Formula
  desc "Switch Claude Code LLM providers"
  homepage "https://github.com/ivangurin/ccx"
  version "v0.4.0"
  on_arm do
    url "https://github.com/ivangurin/ccx/releases/download/#{version}/ccx-mac-arm64-#{version}.zip"
    sha256 "ccc0e715d43e7a1fcc095936c9decdc1dcdeb1fd3a0f9e267d918f7cf8ad3875"
  end
  on_intel do
    url "https://github.com/ivangurin/ccx/releases/download/#{version}/ccx-mac-amd64-#{version}.zip"
    sha256 "73f87bce01f9362585536e5e9cd8ad5266031645b1b0fa5b76aa46052517cc18"
  end
  def install
    bin "ccx"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/ccx version")
  end
end
