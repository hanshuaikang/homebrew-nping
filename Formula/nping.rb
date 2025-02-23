# brew install --build-from-source ./Formula/nping.rb
class Nping < Formula
  desc "🏎 Nping mean NB Ping, A Ping Tool in Rust with Real-Time Data and Visualizations"
  homepage "https://github.com/hanshuaikang/Nping"
  url "https://github.com/hanshuaikang/Nping/releases/download/v0.2.5/nping-x86_64-apple-darwin.tar.gz"
  sha256 "b492113ab57fccdc9f36ee6705f1cac3693f853fb9a449ed204066c3334dacfe"

  # for arm64
  on_arm do
    url "https://github.com/hanshuaikang/Nping/releases/download/v0.2.5/nping-aarch64-apple-darwin.tar.gz"
    sha256 "7577fda2f5d094574e169b37b1b26063a418f6e5ae4dadd1d9a191c38faace9f"
  end

  def install
    bin.install "nping"
  end

  test do
    system "#{bin}/nping", "--version"
  end
end
