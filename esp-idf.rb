class EspIdf < Formula
  desc "ESP-IDF"
  homepage "https://github.com/espressif/esp-idf"
  head "https://github.com/espressif/esp-idf", :using => :git, :tag => "v3.2"
  depends_on "xtensa-esp32-elf"
  depends_on "python"

  def install
    ENV.deparallelize
    # system "git", "submodule", "update", "--init"

    # libexec.install Dir["*"]
    prefix.install Dir["*"]
  end

  def caveats; <<~EOS
    You may wish to add the ESP-IDF environment (.profile, .bash_profile):
      export IDF_PATH=#{opt_prefix}

    Also: If you want to flash, install the python package 'pyserial'
    EOS
  end

  # test do
  #   system "false"
  # end
end
