# brew install --build-from-source ./Formula/nping.rb
class Nping < Formula
  desc "🏎 Nping mean NB Ping, A Ping Tool in Rust with Real-Time Data and Visualizations"
  homepage "https://github.com/hanshuaikang/Nping"
  url "https://github.com/hanshuaikang/Nping/releases/download/v0.2.3/nping-x86_64-apple-darwin.tar.gz"
  sha256 "14675e16235aea3d07f01a3ccc8ac900e1e6479519e5969fb80cb7263319791a"

  # for arm64
  on_arm do
    url "https://github.com/hanshuaikang/Nping/releases/download/v0.2.3/nping-aarch64-apple-darwin.tar.gz"
    sha256 "ee5e8b7403a046bfee0a0f19d6cf4cfea6584a048d635876654eec1e061c403a"
  end

  def install
    bin.install "nping"
  end

  test do
    system "#{bin}/nping", "--version"
  end
end
