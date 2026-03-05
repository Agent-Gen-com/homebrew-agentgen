class Agentgen < Formula
  desc "CLI for the AgentGen API — HTML to PDF and Image"
  homepage "https://www.agent-gen.com"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Agent-Gen-com/agent-gen-lib/releases/download/cli-v#{version}/agentgen-x86_64-macos.tar.gz"
      sha256 "4f4fc4ce257f18b8f8a2a7179920b43fe6b02aa18fb650dcc5f1d9cc7f211a75"
    end

    on_arm do
      url "https://github.com/Agent-Gen-com/agent-gen-lib/releases/download/cli-v#{version}/agentgen-aarch64-macos.tar.gz"
      sha256 "0ac8407b854332115c26a3d9e1ff69b1fde05eb7946307fb17e276c46af03729"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Agent-Gen-com/agent-gen-lib/releases/download/cli-v#{version}/agentgen-x86_64-linux.tar.gz"
      sha256 "2abfa97b4ecef3a442ec5d6ca0abe6a784f07c0b71791b3337782e988ae49b8f"
    end

    on_arm do
      url "https://github.com/Agent-Gen-com/agent-gen-lib/releases/download/cli-v#{version}/agentgen-aarch64-linux.tar.gz"
      sha256 "2bb6655c5b5f2307ac64e6404df905570cd2a22e0a40a3c4e0d8e54af42fed38"
    end
  end

  def install
    bin.install "agentgen"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentgen --version")
  end
end
