require 'formula'
class Audiotools < Formula
  desc ""
  homepage ""
  url "https://github.com/pugetsoundandvision/audiotools/archive/v0.1.00.tar.gz"
  sha256 "eb11a6e1195e33546cd6d715942ee2a3f9b49c81b987b51eec437bb4755f2a5b"
  
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
    bin.install 'verifychecksums'
  end
end
