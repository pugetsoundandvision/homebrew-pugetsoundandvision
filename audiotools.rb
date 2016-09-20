require 'formula'
class Audiotools < Formula
  desc ""
  homepage ""
  url "https://github.com/pugetsoundandvision/audiotools/archive/v0.0.04.zip"
  sha256 "dc6f93d7a9c83acdfca9e5b6235f298f13bf00aecd3e50de3b8f022fd8c7f67a"
  
  depends_on "ffmpeg" => [ 'with-ffplay', 'with-libass', 'with-freetype', 'with-faac' ]
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
