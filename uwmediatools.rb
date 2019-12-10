Learn more or give us feedback
require "formula"
class Videotools < Formula
  desc ""
  homepage ""
  url "https://github.com/pugetsoundandvision/uwmediascripts/archive/2019-12-11.tar.gz"
  version "2019-12-11"
  sha256 "13520a842440a44831013735f94df6f98b4094b0557b9761bb781e9f5eca04ac"
  head "https://github.com/pugetsoundandvision/uwmediascripts.git"

  depends_on "ffmpeg"
  depends_on "mediaconch"
  depends_on "mediainfo"
  
  def install
    bin.install "audioqc"
    bin.install "uwmetaedit2"
    bin.install "uwmethods.rb"
  end
end
