require 'formula'
class Audiotools < Formula
  desc ""
  homepage ""
  url "https://github.com/pugetsoundandvision/audiotools/archive/v0.0.10.tar.gz"
  sha256 "a1eaf2241795dfc2db792907314fd630d8f251e2cb4e1d66dd986843348daadb"
  
  depends_on "sdl"
  depends_on "ffmpeg" => [ 'with-sdl2', 'with-freetype']
  depends_on 'cask'
  depends_on 'mediainfo'
  depends_on 'bagit'
  depends_on 'flac'
  depends_on 'md5deep'
  depends_on 'imagesnap'


 
  def install
    bin.install 'uwmetaedit'
    bin.install 'audioaip'
  end
end
