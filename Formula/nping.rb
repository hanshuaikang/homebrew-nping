# brew install --build-from-source ./Formula/nping.rb
class Nping < Formula
  desc "🏎 Nping mean NB Ping, A Ping Tool in Rust with Real-Time Data and Visualizations"
  homepage "https://github.com/hanshuaikang/Nping"
  url "https://github.com/hanshuaikang/Nping/releases/download/v0.3.0/nping-x86_64-apple-darwin.tar.gz"
  sha256 "1c8012d664dd1f1e168023a808a58addcbc7d7bbc9707bb5e8ca48b6374f099f"

  # for arm64
  on_arm do
    url "https://github.com/hanshuaikang/Nping/releases/download/v0.3.0/nping-aarch64-apple-darwin.tar.gz"
    sha256 "582a3da60674fb6327986e381efbbe551dae39ef6020a1c1148265a9f0795250"
  end

  def install
    bin.install "nping"
  end

  test do
    system "#{bin}/nping", "--version"
  end
end
