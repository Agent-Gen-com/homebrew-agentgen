class Agentgen < Formula
  desc "CLI for the AgentGen API — HTML to PDF and Image"
  homepage "https://www.agent-gen.com"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Agent-Gen-com/agent-gen-lib/releases/download/cli-v#{version}/agentgen-x86_64-macos.tar.gz"
      sha256 "87244be3e8e1b44686b319728045becf303d8de0554d14d0dc595c79f70f437f"
    end

    on_arm do
      url "https://github.com/Agent-Gen-com/agent-gen-lib/releases/download/cli-v#{version}/agentgen-aarch64-macos.tar.gz"
      sha256 "59d0434f776c06393df268589a2b225fe23f580fdcb5ef009236da031c75e884"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Agent-Gen-com/agent-gen-lib/releases/download/cli-v#{version}/agentgen-x86_64-linux.tar.gz"
      sha256 "eceefcd38fe997bf0042a45df879a6a89cb7ebedeee8c11b6a7a80281cac63c8"
    end

    on_arm do
      url "https://github.com/Agent-Gen-com/agent-gen-lib/releases/download/cli-v#{version}/agentgen-aarch64-linux.tar.gz"
      sha256 "66730ed0a26a6a48a4096e1e35c1292ed9164cd0b5e2890556eaad1286586b51"
    end
  end

  def install
    bin.install "agentgen"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentgen --version")
  end
end
