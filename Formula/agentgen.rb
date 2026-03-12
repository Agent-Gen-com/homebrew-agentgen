class Agentgen < Formula
  desc "CLI for the AgentGen API — HTML to PDF and Image"
  homepage "https://www.agent-gen.com"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Agent-Gen-com/agent-gen-lib/releases/download/cli-v#{version}/agentgen-x86_64-macos.tar.gz"
      sha256 "41408dd0c6d627cc163cf4d6b78621fa7d5159309e26082e0bf081f6f2b82609"
    end

    on_arm do
      url "https://github.com/Agent-Gen-com/agent-gen-lib/releases/download/cli-v#{version}/agentgen-aarch64-macos.tar.gz"
      sha256 "ff3e5036c5b37bc053d5dd080041d451bc911605e78d31ffe4aed7d6ca635409"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Agent-Gen-com/agent-gen-lib/releases/download/cli-v#{version}/agentgen-x86_64-linux.tar.gz"
      sha256 "3440175845ef02ac862517e6fa96d018097712c54d1fc7231c68463118464ad4"
    end

    on_arm do
      url "https://github.com/Agent-Gen-com/agent-gen-lib/releases/download/cli-v#{version}/agentgen-aarch64-linux.tar.gz"
      sha256 "63cef0a50933fe28cf81413ba25ad0ade1ccc3893ecdc314fdf412d05799a28e"
    end
  end

  def install
    bin.install "agentgen"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentgen --version")
  end
end
