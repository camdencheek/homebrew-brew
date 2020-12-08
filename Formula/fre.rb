class Fre < Formula
  desc "A commandline frecency tracker"
  homepage "https://github.com/camdencheek/fre"
  url "https://github.com/camdencheek/fre/archive/0.3.0.tar.gz"
  sha256 "098aed8b4f3a451092a605e8fa21ceca086605f0e7cf0009b494b3b217c74696"
  license "MIT"
  head "https://github.com/camdencheek/fre.git"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/fre"
  end
end
