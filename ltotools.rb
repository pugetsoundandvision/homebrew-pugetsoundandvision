require "formula"
class Ltotools < Formula
  desc ""
  homepage ""
  url "https://github.com/pugetsoundandvision/lto_tools/archive/2018-09-04.tar.gz"
  version "2018-09-04"
  sha256 "9fb986fc8dadf357351ba32427c5dcf56154ba89bfea50cfc6f656dee75a148d"
  head "https://github.com/pugetsoundandvision/lto_tools.git"
  
  
  def install
    bin.install "ltomanifest"
  end
end
