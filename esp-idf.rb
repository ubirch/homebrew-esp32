class EspIdf < Formula
  desc "ESP-IDF"
  homepage "https://github.com/espressif/esp-idf"
  url "https://github.com/espressif/esp-idf/releases/download/v3.1.1/esp-idf-v3.1.1.zip"
  sha256 "93f1a4d6349436728b51b6a73912e43975c4156fd88a8d1018c88f26b8af0e11"
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
