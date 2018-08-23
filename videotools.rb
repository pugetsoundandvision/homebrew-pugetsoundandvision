require "formula"
class Videotools < Formula
  desc ""
  homepage ""
  url "https://github.com/pugetsoundandvision/videotools/archive/2018-08-23.tar.gz"
  version "2018-08-23"
  sha256 "fb0d8c671f7b332c1ebeb9ac6fcb0362b753315acf3665ecd1c29901a9a71324"
  head "https://github.com/pugetsoundandvision/videotools.git"
  
  revision 1

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
