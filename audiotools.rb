require 'formula'
class Audiotools < Formula
  desc ""
  homepage ""
  url "https://github.com/pugetsoundandvision/audiotools/archive/v0.0.07.zip"
  sha256 "b3c84dfb6d942bc89bb4fbf5443ee733636338c0e01e15514127ce2922a22c0e"
  revision 2
  
  depends_on "sdl"
  depends_on "ffmpeg" => [ 'with-sdl2', 'with-libass', 'with-freetype', 'with-faac' ]
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
