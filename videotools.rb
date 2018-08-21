require "formula"
class Videotools < Formula
  desc ""
  homepage ""
  url "https://github.com/pugetsoundandvision/videotools/archive/2018-08-21.tar.gz"
  sha256 "3d30fb1b2b5bd2e88a9c2bd9b6660d0a6f52c27e0ed3b317b6f5ad7dc0b82592"
  head "https://github.com/pugetsoundandvision/videotools.git"

  depends_on "sdl"
  depends_on "ffmpeg" => ["with-sdl2", "with-freetype", "with-opus", "with-fdk-aac"]
  depends_on "cask"
  depends_on "mediainfo"
  depends_on "bagit"
  depends_on "md5deep"
  depends_on "mpv"
  depends_on "dialog"
  
  def install
    bin.install "videoaip"
  end

  def post_install
    puts "Checking for dependency Textmate. If Textmate is not found will attempt to install"
    if File.exist? File.expand_path "/Applications/TextMate.app"
      puts "TextMate was found"
    else
      if `brew cask ls --versions textmate 2>&1 | head -n1`.include? "Warning: textmate is not installed"
        puts "Attempting to install Textmate"
        system `echo 'brew install Caskroom/cask/textmate > /dev/null'`
      else
        puts "Textmate was found"
      end
    end
  end
end
