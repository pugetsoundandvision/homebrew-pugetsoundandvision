require "formula"
class Videotools < Formula
  desc ""
  homepage ""
  url "https://github.com/pugetsoundandvision/videotools/archive/2017-09-15.tar.gz"
  sha256 "f0f80a83f3d54ce95897be06db6bf99d4c9c0ec5c0d0a57dd845e695dec8141e"
  head "https://github.com/pugetsoundandvision/videotools.git"

  depends_on "sdl"
  depends_on "ffmpeg" => ["with-sdl2", "with-freetype", "with-opus", "with-fdk-aac"]
  depends_on "cask"
  depends_on "mediainfo"
  depends_on "bagit"
  depends_on "md5deep"
  depends_on "mpv"
  
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
