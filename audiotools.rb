require 'formula'
class Audiotools < Formula
  desc ""
  homepage ""
  url "https://github.com/pugetsoundandvision/audiotools/archive/v0.0.02.zip"
  sha256 "09011d9bb928e1021a65c51095f9436bb69dea2a626687144e1ec2d47978b739"
  
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
