# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Meroxa < Formula
  desc "The Meroxa CLI"
  homepage "https://meroxa.io"
  version "2.0.3"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meroxa/cli/releases/download/v2.0.3/meroxa_2.0.3_darwin_arm64.tar.gz"
      sha256 "f09ec3fdcaa6bb688ed87782ee5c937de7876dfee55f5550bd74c75a404dc284"

      def install
        bin.install "meroxa"
        prefix.install_metafiles
        bash_completion.install "etc/completion/meroxa.completion.sh"
        zsh_completion.install "etc/completion/meroxa.completion.zsh" => "meroxa"
        fish_completion.install "etc/completion/meroxa.completion.fish"
        man.install "etc/man/man1"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/meroxa/cli/releases/download/v2.0.3/meroxa_2.0.3_darwin_amd64.tar.gz"
      sha256 "19e79fb76ae2598838d9f2380fbdced55850940d0478b2ec99528f6db4aeac5f"

      def install
        bin.install "meroxa"
        prefix.install_metafiles
        bash_completion.install "etc/completion/meroxa.completion.sh"
        zsh_completion.install "etc/completion/meroxa.completion.zsh" => "meroxa"
        fish_completion.install "etc/completion/meroxa.completion.fish"
        man.install "etc/man/man1"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/meroxa/cli/releases/download/v2.0.3/meroxa_2.0.3_linux_arm64.tar.gz"
      sha256 "23e7695355865c69a8ae91868f3fa9ce4440c788c72bd0b33d2eccce9f61caf9"

      def install
        bin.install "meroxa"
        prefix.install_metafiles
        bash_completion.install "etc/completion/meroxa.completion.sh"
        zsh_completion.install "etc/completion/meroxa.completion.zsh" => "meroxa"
        fish_completion.install "etc/completion/meroxa.completion.fish"
        man.install "etc/man/man1"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/meroxa/cli/releases/download/v2.0.3/meroxa_2.0.3_linux_amd64.tar.gz"
      sha256 "afe11d9dd432ee162a8e602489298b64535ace08c3eb348fccb0bc2101c3645a"

      def install
        bin.install "meroxa"
        prefix.install_metafiles
        bash_completion.install "etc/completion/meroxa.completion.sh"
        zsh_completion.install "etc/completion/meroxa.completion.zsh" => "meroxa"
        fish_completion.install "etc/completion/meroxa.completion.fish"
        man.install "etc/man/man1"
      end
    end
  end

  head "https://github.com/meroxa/cli.git"

  test do
    shell_output("#{bin}/meroxa version").match(/2.0.3/)
  end
end
