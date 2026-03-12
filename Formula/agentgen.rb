class Agentgen < Formula
  desc "CLI for the AgentGen API — HTML to PDF and Image"
  homepage "https://www.agent-gen.com"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Agent-Gen-com/agent-gen-lib/releases/download/cli-v#{version}/agentgen-x86_64-macos.tar.gz"
      sha256 "883303d1c35ffa9d512ffe09c8b3f34644eae83a6e1e99fbafd27f05dcad5cba"
    end

    on_arm do
      url "https://github.com/Agent-Gen-com/agent-gen-lib/releases/download/cli-v#{version}/agentgen-aarch64-macos.tar.gz"
      sha256 "b2eb8fc963df79bfafd7caeb122d5d6d5e8f82312b8d7b0a46e585a133e25d83"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Agent-Gen-com/agent-gen-lib/releases/download/cli-v#{version}/agentgen-x86_64-linux.tar.gz"
      sha256 "bdb96103f9dfce8fe6cc681da91111ef0124b49fff5e24037090515593749b30"
    end

    on_arm do
      url "https://github.com/Agent-Gen-com/agent-gen-lib/releases/download/cli-v#{version}/agentgen-aarch64-linux.tar.gz"
      sha256 "ebd815637c3d64da8ef120dc18f9e74cf18451177c135abcff8265b22db109aa"
    end
  end

  def install
    bin.install "agentgen"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentgen --version")
  end
end
