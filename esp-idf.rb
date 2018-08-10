class EspIdf < Formula
  desc "ESP-IDF"
  homepage "https://github.com/espressif/esp-idf"
  url "https://github.com/espressif/esp-idf/releases/download/v3.0.3/esp-idf-v3.0.3.zip"
  sha256 "b92d0ffe24f5b94666f56e438f9dce642bc9eec6e34988049fea9cab60a06afd"
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
