require 'formula'
class Audiotools < Formula
  desc ""
  homepage ""
  url "https://github.com/pugetsoundandvision/audiotools/archive/v0.1.01.zip"
  sha256 "20d2f46d632693786f53d6745ab66c4e5ec04607f2dfb7b4dac6907d6d9796e6"
  revision 1
  
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
      if File.exist? File.expand_path '/usr/local/bin/bwfmetaedit'
         puts 'BWF Metaedit confirmed'
      else
         bin.install 'bwfmetaedit'
      end
  end
  
  def post_install;
      puts "Checking for dependency Textmate. If Textmate is not found will attempt to install"
      if File.exist? File.expand_path '/Applications/TextMate.app'
        puts 'TextMate was found'
      else
        if `brew cask ls --versions textmate 2>&1 | head -n1`.include? 'Warning: textmate is not installed'
            puts 'Attempting to install Textmate'
            system `echo 'brew install Caskroom/cask/textmate > /dev/null'`
        else
          puts 'Textmate was found'
        end
      end
  end
end
