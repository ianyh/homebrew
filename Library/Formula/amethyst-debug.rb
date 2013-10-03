require 'formula'

class AmethystDebug < Formula
  homepage 'https://github.com/ianyh/amethyst-debug'
  url 'https://github.com/ianyh/amethyst-debug/archive/0.1.tar.gz'
  sha1 'f823b69bd6694800e33bfabbf484ca5a925cf8ca'

  depends_on :xcode

  def install
    system "xcodebuild -target amethyst-debug -configuration Release SYMROOT=symroot OBJROOT=objroot"
    bin.install "symroot/Release/amethyst-debug"
  end
end
