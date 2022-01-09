class Sshpass < Formula
  desc "Sshpass is a tool for non-interactivly performing password authentication with SSH's so called \"interactive keyboard password authentication\""
  homepage "https://sourceforge.net/projects/sshpass"
  url "https://sourceforge.net/projects/sshpass/files/sshpass/1.09/sshpass-1.09.tar.gz"
  version "1.09"
  sha256 "71746e5e057ffe9b00b44ac40453bf47091930cba96bbea8dc48717dedc49fb7"
  license "GNU General Public License version 2.0 (GPLv2)"

  def install
    system "./configure", *std_configure_args, "--disable-silent-rules", "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "#{bin}/sshpass", "--version"
  end
end
