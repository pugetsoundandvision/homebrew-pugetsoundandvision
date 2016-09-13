require 'formula'
class Audiotools < Formula
  desc ""
  homepage ""
  url "https://github.com/pugetsoundandvision/audiotools/archive/v0.0.01.zip"
  sha256 "f16d76dd62f3ab212612be311bc53b0647059f74e17875e1a7dd70cf89f86bbf"
  
  depends_on "ffmpeg" => [ 'with-ffplay', 'with-libass', 'with-freetype', 'with-faac' ]
  depends_on 'cask'
  depends_on 'mediainfo'
  depends_on 'bagit'
  depends_on 'flac'
  depends_on 'md5deep'
  depends_on 'imagesnap'
  depends_on 'Caskroom/cask/textmate'


 
  def install
    bin.install 'uwmetaedit'
    bin.install 'audioaip'
  end
end
