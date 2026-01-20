# Homebrew formula for Cortex Memory CLI
# Auto-updated by CI on each release from Project-Cortex
#
# Install:
#   brew install cortex-memory/tap/cli
#
# Or manually tap first:
#   brew tap cortex-memory/tap
#   brew install cli

class Cli < Formula
  desc "CLI for managing Cortex Memory deployments and performing administrative tasks"
  homepage "https://cortexmemory.dev"
  url "https://registry.npmjs.org/@cortexmemory/cli/-/cli-0.32.0.tgz"
  sha256 "60781e2557fd2e435a843e3c74cb9f25b35874541685cf3511ef4b9773f013ba"
  license "FSL-1.1-Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cortex --version")
  end
end