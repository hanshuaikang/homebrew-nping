# brew install --build-from-source ./Formula/nping.rb
class Nping < Formula
  desc "🏎 Nping mean NB Ping, A Ping Tool in Rust with Real-Time Data and Visualizations"
  homepage "https://github.com/hanshuaikang/Nping"
  url "https://github.com/hanshuaikang/Nping/releases/download/v0.6.0/nping-x86_64-apple-darwin.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

#   for arm64
  on_arm do
    url "https://github.com/hanshuaikang/Nping/releases/download/v0.6.0/nping-aarch64-apple-darwin.tar.gz"
    sha256 "60256e6fc759d02a2d9d0009dcb9366919308aee396d1bbe4334f4c6bcec4013"
  end

  def install
    bin.install "nping"
  end

  test do
    system "#{bin}/nping", "--version"
  end
end
