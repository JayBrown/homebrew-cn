class Cn < Formula
  desc "CLI for CommonNumerics routines (CRC-8/16/32/64, Base16/32/64)"
  homepage "https://github.com/JayBrown/cn"
  url "https://github.com/JayBrown/cn/archive/1.00.tar.gz"
  sha256 "ac0472649f09d20f396767e1f9fa185a59639bd17fc32153f5dd4a2135dbebc9"

  def install
    system "make prefix=#{prefix}"
    system "make clean"
    system "make cn"
    bin.install "cn"
    man1.install "cn.1"
  end

  test do
    system "#{bin}/cn", "version"
  end
end
