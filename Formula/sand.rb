class Sand < Formula
  desc "Git for your data — real-data Postgres branches for every branch, worktree, PR, and agent"
  homepage "https://sandbase.dev"
  version "0.0.42"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/sandbasehq/sand/releases/download/v0.0.42/sand-darwin-arm64"
      sha256 "991181af1103ebcc000047eee9056e656a0b877fa20c43b332ea806dcdca8ef2"
    end
    on_intel do
      url "https://github.com/sandbasehq/sand/releases/download/v0.0.42/sand-darwin-x64"
      sha256 "275b994a60614ee36a5e1be1120d2a9e92f7da49615d19f57a70f9804b4dcb17"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sandbasehq/sand/releases/download/v0.0.42/sand-linux-arm64"
      sha256 "eba1b39898dafebc43cc3d7f72f3a5e4d8fb0a6a10ebf6b7f49221e620850a5f"
    end
    on_intel do
      url "https://github.com/sandbasehq/sand/releases/download/v0.0.42/sand-linux-x64"
      sha256 "db60a86987e8cbffe2af8c6fd40a400df627581ebe7ce1b72ff498af905af270"
    end
  end

  def install
    # Each platform downloads a single bare binary; install it as `sand`.
    bin.install Dir["*"].first => "sand"
  end

  test do
    assert_match "0.0.42", shell_output("#{bin}/sand --version")
  end
end
