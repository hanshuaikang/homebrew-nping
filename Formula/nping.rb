# brew install --build-from-source ./Formula/nping.rb
class Nping < Formula
  desc "🏎 Nping mean NB Ping, A Ping Tool in Rust with Real-Time Data and Visualizations"
  homepage "https://github.com/hanshuaikang/Nping"
  url "https://github.com/hanshuaikang/Nping/releases/download/v0.4.0/nping-x86_64-apple-darwin.tar.gz"
  sha256 "1e2680bedf25148b85d87e4f7e9874bcc722399813c28e11a9e30d6fe4e82439"

#   for arm64
  on_arm do
    url "https://github.com/hanshuaikang/Nping/releases/download/v0.4.0/nping-aarch64-apple-darwin.tar.gz"
    sha256 "74b92a4c15ea675b60fa0208ab2bce439cad428a4cce9a8b4ed7ca194c28e897"
  end

  def install
    bin.install "nping"
  end

  test do
    system "#{bin}/nping", "--version"
  end
end
