# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Slop < Formula
  desc "Build LLM workflows on the command line"
  homepage "https://github.com/chriscorrea/slop"
  version "0.1.1"
  license "BSD-3-Clause"

  on_macos do
    on_intel do
      url "https://github.com/chriscorrea/slop/releases/download/v0.1.1/slop_0.1.1_darwin_amd64.tar.gz"
      sha256 "60aa6adc48d8ae6417c534844250b342cd4d40a1f43ea1e8adcdd33d7f78c5df"

      def install
        bin.install "slop"
        man1.install "man/slop.1"
      end
    end
    on_arm do
      url "https://github.com/chriscorrea/slop/releases/download/v0.1.1/slop_0.1.1_darwin_arm64.tar.gz"
      sha256 "40657564151db23d9a4dfad37cd78492cbb98b6140e9f202d6e12d6c0eae3eb7"

      def install
        bin.install "slop"
        man1.install "man/slop.1"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chriscorrea/slop/releases/download/v0.1.1/slop_0.1.1_linux_amd64.tar.gz"
        sha256 "9ada8cf24ff0e18b2b1eb6bd920225b65e3c3c71a2eaa96c375893dff5d6bea1"

        def install
          bin.install "slop"
          man1.install "man/slop.1"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chriscorrea/slop/releases/download/v0.1.1/slop_0.1.1_linux_arm64.tar.gz"
        sha256 "a5f8f02d8c66e0992e6fc6018c7b97f76e4f36e044c4c52beda8ca31013cd6fe"

        def install
          bin.install "slop"
          man1.install "man/slop.1"
        end
      end
    end
  end

  test do
    system "#{bin}/slop version"
  end
end
