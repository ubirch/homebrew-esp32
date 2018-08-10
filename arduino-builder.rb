class ArduinoBuilder < Formula
  desc "arduino-builder"
  homepage "https://github.com/arduino/arduino-builder"
  url "https://github.com/arduino/arduino-builder/releases/download/1.3.25/arduino-builder-macosx-1.3.25.tar.bz2"
  sha256 "81d2f01330512c3ec7695743fd4b034cee466960ecc6330e834336e934f870a9"

  def install
    ENV.deparallelize
    # system "git", "submodule", "update", "--init"

    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/arduino-builder"
  end

  # test do
  #   system "false"
  # end
end
