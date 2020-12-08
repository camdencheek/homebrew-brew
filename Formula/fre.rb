class Fre < Formula
  desc "A commandline frecency tracker"
  homepage "https://github.com/camdencheek/fre"
  url "https://github.com/camdencheek/fre/archive/0.3.1.tar.gz"
  sha256 "22d8dddd1c634031e731ab3966d07aa01acc184b773ae1d9aa5fe5aa6c0c3858"
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
