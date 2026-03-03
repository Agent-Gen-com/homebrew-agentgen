class Agentgen < Formula
  desc "CLI for the AgentGen API — HTML to PDF and Image"
  homepage "https://www.agent-gen.com"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Agent-Gen-com/agent-gen-lib/releases/download/cli-v#{version}/agentgen-x86_64-macos.tar.gz"
      sha256 "PLACEHOLDER_SHA_X86_MACOS"
    end

    on_arm do
      url "https://github.com/Agent-Gen-com/agent-gen-lib/releases/download/cli-v#{version}/agentgen-aarch64-macos.tar.gz"
      sha256 "PLACEHOLDER_SHA_AARCH64_MACOS"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Agent-Gen-com/agent-gen-lib/releases/download/cli-v#{version}/agentgen-x86_64-linux.tar.gz"
      sha256 "PLACEHOLDER_SHA_X86_LINUX"
    end

    on_arm do
      url "https://github.com/Agent-Gen-com/agent-gen-lib/releases/download/cli-v#{version}/agentgen-aarch64-linux.tar.gz"
      sha256 "PLACEHOLDER_SHA_AARCH64_LINUX"
    end
  end

  def install
    bin.install "agentgen"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentgen --version")
  end
end
