require "formula"
class Videotools < Formula
  desc ""
  homepage ""
  url "https://github.com/pugetsoundandvision/videotools/archive/2021-01-05.tar.gz"
  version "2021-01-05"
  sha256 "6de0ba9a84f72ba1cbf79cdf49ab0a9b39e24ed1e140ee540c4a520df9431f95"
  head "https://github.com/pugetsoundandvision/videotools.git"

  
  depends_on "sdl"
  depends_on "ffmpeg"
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
