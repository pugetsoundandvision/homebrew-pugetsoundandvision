require "formula"
class Audiotools < Formula
  desc ""
  homepage ""
  url "https://github.com/pugetsoundandvision/audiotools/archive/v0.2.04.tar.gz"
  sha256 "7966406e25b93e8264e682275b8df2a83722fc9c208e5f1a30970e09235472eb"
  head "https://github.com/pugetsoundandvision/audiotools.git"

  depends_on "sdl"
  depends_on "ffmpeg" => ["with-sdl2", "with-freetype", "with-opus", "with-fdk-aac"]
  depends_on "cask"
  depends_on "mediainfo"
  depends_on "bagit"
  depends_on "flac"
  depends_on "md5deep"
  depends_on "imagesnap"
  depends_on "mediaconch"
  depends_on "mpv"
  depends_on "sox"
  depends_on "dialog"

  def install
    bin.install "uwmetaedit"
    bin.install "audioaip"
    bin.install "verifychecksums"
    etc.install "audioaip_mediaconch_policy.xml"
    if File.exist? File.expand_path "/usr/local/bin/bwfmetaedit"
      puts "BWF Metaedit confirmed"
    else
      bin.install "bwfmetaedit"
    end
  end

  def post_install
    unless `brew ls --versions audiorecorder 2>&1 | head -n1`.include? "audiorecorder"
      puts "Installing audiorecorder"
      system `echo 'brew tap amiaopensource/amiaos'`
      system `echo 'brew install audiorecorder --ignore-dependencies'`
    end
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
