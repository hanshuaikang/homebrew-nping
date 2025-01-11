class Nping < Formula
  desc "🏎 Nping mean NB Ping, A Ping Tool in Rust with Real-Time Data and Visualizations"
  homepage "https://github.com/hanshuaikang/Nping"
  url "https://github.com/hanshuaikang/Nping/releases/download/v0.2.2/nping-x86_64-apple-darwin.tar.gz"
  sha256 "4ced4570bffab4b3841e833b965aa07cdbc313f986006e99bba16352b7dc0a9e"

  for arm64
  on_arm do
    url "https://github.com/hanshuaikang/Nping/releases/download/v0.2.2/nping-aarch64-apple-darwin.tar.gz"
    sha256 "8d2a35515e007b5ebe4c443706e1b4ae3cd41e7a92707b616053b9b3d8624d84"
  end

  def install
    bin.install "nping"
  end

  test do
    system "#{bin}/nping", "--version"
  end
end
