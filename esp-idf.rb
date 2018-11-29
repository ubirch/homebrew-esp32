class EspIdf < Formula
  desc "ESP-IDF"
  homepage "https://github.com/espressif/esp-idf"
  url "https://github.com/espressif/esp-idf/archive/release/v3.2.zip"
  sha256 "74b4b417f3adecbd12ff94c2002bf52ff467838280e2a4a4a51ae27a7efdebdc"
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
