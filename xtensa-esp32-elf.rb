# Documentation: https://github.com/Homebrew/brew/blob/master/docs/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class XtensaEsp32Elf < Formula
  desc "ESP32 toolchain"
  homepage ""
  url "https://dl.espressif.com/dl/xtensa-esp32-elf-osx-1.22.0-80-g6c4433a-5.2.0.tar.gz"
  version "1.22.0-80"
  sha256 "a4307a97945d2f2f2745f415fbe80d727750e19f91f9a1e7e2f8a6065652f9da"

  def install
    libexec.install Dir["*"]
    bin.install_symlink Dir[libexec/"bin/*"]
  end

  # test do
  #   system "false"
  # end
end
