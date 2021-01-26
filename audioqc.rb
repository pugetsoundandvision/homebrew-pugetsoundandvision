require "formula"
class Audiotools < Formula
  desc ""
  homepage ""
  url ""
  sha256 ""
  head "https://github.com/pugetsoundandvision/audioqc.git"

  depends_on "ffmpeg"
  depends_on "mediainfo"
  depends_on "bwfmetaedit"
  depends_on "mediaconch"

  def install
## Install script and config
  end
end