class Ccx < Formula
  desc "Switch Claude Code LLM providers"
  homepage "https://github.com/ivangurin/ccx"
  version "0.11.0"
  on_arm do
    url "https://github.com/ivangurin/ccx/releases/download/v#{version}/ccx-mac-arm64-v#{version}.zip"
    sha256 "4ede3b65841791d57c62b8baecf679567c501ddcf89bac19319bca723cb395a8"
  end
  on_intel do
    url "https://github.com/ivangurin/ccx/releases/download/v#{version}/ccx-mac-amd64-v#{version}.zip"
    sha256 "2cae27cccba43899b36ce41bcbe944c5ae536528182394bf7e3520246986593a"
  end
  def install
    bin.install "ccx"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/ccx version")
  end
end
