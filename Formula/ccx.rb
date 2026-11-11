class Ccx < Formula
  desc "Switch Claude Code LLM providers"
  homepage "https://github.com/ivangurin/ccx"
  version "v0.7.0"
  on_arm do
    url "https://github.com/ivangurin/ccx/releases/download/#{version}/ccx-mac-arm64-#{version}.zip"
    sha256 "5d630168cb6455a6e6bd9417aa33076b07f89c6feb730f25c8212b8c7b2fb3b0"
  end
  on_intel do
    url "https://github.com/ivangurin/ccx/releases/download/#{version}/ccx-mac-amd64-#{version}.zip"
    sha256 "02b496ebc33ac70e6e39fc5c3d7d665bc7e43e41a9095d4ff6d1080022b0f088"
  end
  def install
    bin.install "ccx"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/ccx version")
  end
end
