# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Meroxa < Formula
  desc "The Meroxa CLI"
  homepage "https://meroxa.io"
  version "2.19.1"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/meroxa/cli/releases/download/v2.19.1/meroxa_2.19.1_darwin_amd64.tar.gz"
      sha256 "ba0bab40da3366a8d8930e17dc0ceae0f80c82c574845821bc7675dd292fafee"

      def install
        bin.install "meroxa"
        prefix.install_metafiles
        bash_completion.install "etc/completion/meroxa.completion.sh"
        zsh_completion.install "etc/completion/meroxa.completion.zsh" => "meroxa"
        fish_completion.install "etc/completion/meroxa.completion.fish"
        man.install "etc/man/man1"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/meroxa/cli/releases/download/v2.19.1/meroxa_2.19.1_darwin_arm64.tar.gz"
      sha256 "c938043efa48a744828c7737d98e1cc1a1df77593660db56df282f8fbd43e6b5"

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
    if Hardware::CPU.intel?
      url "https://github.com/meroxa/cli/releases/download/v2.19.1/meroxa_2.19.1_linux_amd64.tar.gz"
      sha256 "6fffac1e55de0b22929a78f54aced29349db0684bb1149f87c7896a736af14bb"

      def install
        bin.install "meroxa"
        prefix.install_metafiles
        bash_completion.install "etc/completion/meroxa.completion.sh"
        zsh_completion.install "etc/completion/meroxa.completion.zsh" => "meroxa"
        fish_completion.install "etc/completion/meroxa.completion.fish"
        man.install "etc/man/man1"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/meroxa/cli/releases/download/v2.19.1/meroxa_2.19.1_linux_arm64.tar.gz"
      sha256 "7b4d74195bb9e0bbb2de1e63ef2c58ab5e62aca92b16dd90b48816f480db8c35"

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
    shell_output("#{bin}/meroxa version").match(/2.19.1/)
  end
end
