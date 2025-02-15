# brew install --build-from-source ./Formula/nping.rb
class Nping < Formula
  desc "🏎 Nping mean NB Ping, A Ping Tool in Rust with Real-Time Data and Visualizations"
  homepage "https://github.com/hanshuaikang/Nping"
  url "https://github.com/hanshuaikang/Nping/releases/download/v0.2.4/nping-x86_64-apple-darwin.tar.gz"
  sha256 "512e4d92f1424b7d9bf031a96a38669bfcc6829d10d5c98ec8701bc9c28f99e7"

  # for arm64
  on_arm do
    url "https://github.com/hanshuaikang/Nping/releases/download/v0.2.4/nping-aarch64-apple-darwin.tar.gz"
    sha256 "bdf5bee105f0608d8f9135442dc68b34e86002ef080aab7b6e8d6ef9314733d9"
  end

  def install
    bin.install "nping"
  end

  test do
    system "#{bin}/nping", "--version"
  end
end
