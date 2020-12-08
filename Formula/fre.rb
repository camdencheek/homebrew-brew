class Fre < Formula
  desc "A commandline frecency tracker"
  homepage "https://github.com/camdencheek/fre"
  url "https://github.com/camdencheek/fre/archive/0.3.0.tar.gz"
  sha256 "1bee519fe0b44f0d6b11bad5337ba5e604fdef9e712ff218915a9287b7b9164b"
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
