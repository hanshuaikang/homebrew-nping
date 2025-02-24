# brew install --build-from-source ./Formula/nping.rb
class Nping < Formula
  desc "🏎 Nping mean NB Ping, A Ping Tool in Rust with Real-Time Data and Visualizations"
  homepage "https://github.com/hanshuaikang/Nping"
  url "https://github.com/hanshuaikang/Nping/releases/download/v0.2.6/nping-x86_64-apple-darwin.tar.gz"
  sha256 "fa422a10c039aa52b05274d55243c576893c1f8d08a46052c1745b129cf753d7"

  # for arm64
  on_arm do
    url "https://github.com/hanshuaikang/Nping/releases/download/v0.2.6/nping-aarch64-apple-darwin.tar.gz"
    sha256 "2b6d4ccf6f98d67a4860cef052b77acd3d22a03e7610baf05937a4764ee2bc5d"
  end

  def install
    bin.install "nping"
  end

  test do
    system "#{bin}/nping", "--version"
  end
end
