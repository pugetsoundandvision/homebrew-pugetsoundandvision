require 'formula'
class Audiotools < Formula
  desc ""
  homepage ""
  url "https://github.com/pugetsoundandvision/audiotools/archive/v0.0.06.zip"
  sha256 "accc955f0ffdc7f44a18042e0cba730b8bb4a881e7ba619e3c4614d7f234320e"
  revision 2
  
  depends_on "ffmpeg" => [ 'with-sdl', 'with-libass', 'with-freetype', 'with-faac' ]
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
