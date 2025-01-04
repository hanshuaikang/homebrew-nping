class Nping < Formula
  desc "🏎 Nping mean NB Ping, A Ping Tool in Rust with Real-Time Data and Visualizations"
  homepage "https://github.com/hanshuaikang/Nping"
  url "https://github.com/hanshuaikang/Nping/releases/download/v0.2.1/nping-x86_64-apple-darwin.tar.gz"
  sha256 "895f032fbc06ad75b79230360b9ee20210c4f4ac518ca627422d866b863529db"

  # for arm64
  on_arm do
    url "https://github.com/hanshuaikang/Nping/releases/download/v0.2.1/nping-aarch64-apple-darwin.tar.gz"
    sha256 "aaa2ef9984b52c54afaea8d4de4b9397334a06ffa44d1fbbf1d90c3b8b4134c4"
  end

  def install
    bin.install "nping"
  end

  test do
    system "#{bin}/nping", "--version"
  end
end
