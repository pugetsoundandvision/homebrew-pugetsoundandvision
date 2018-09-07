require "formula"
class Ltotools < Formula
  desc ""
  homepage ""
  url "https://github.com/pugetsoundandvision/lto_tools/archive/2018-09-07.tar.gz"
  version "2018-09-07"
  sha256 "10b786cfabb86033e9014e306e5a984e5caa5a268d35f20f11a0ed40e493e2bf"
  head "https://github.com/pugetsoundandvision/lto_tools.git"
  
  
  def install
    bin.install "ltomanifest"
  end
end
