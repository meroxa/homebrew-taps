# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Meroxa < Formula
  desc "The Meroxa CLI"
  homepage "https://meroxa.io"
  version "2.10.0"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meroxa/cli/releases/download/v2.10.0/meroxa_2.10.0_darwin_arm64.tar.gz"
      sha256 "f72e890bfb2d797df9a360f66d46f30591c2075dfbd7a671230645eb9cd23db1"

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
      url "https://github.com/meroxa/cli/releases/download/v2.10.0/meroxa_2.10.0_darwin_amd64.tar.gz"
      sha256 "04f8b9e125143a8e1c9854ecf6af429521a9dbe548f41bcfcd1cdd8f3777b049"

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
      url "https://github.com/meroxa/cli/releases/download/v2.10.0/meroxa_2.10.0_linux_arm64.tar.gz"
      sha256 "b4cf6f174f133bb1fc195c619e9a96958ef1bb89fde736e4d67dccd7c4cdb816"

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
      url "https://github.com/meroxa/cli/releases/download/v2.10.0/meroxa_2.10.0_linux_amd64.tar.gz"
      sha256 "702488539f4f45ef90d28b4a485c925b90b46e8d9361a737639494eda561896f"

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
    shell_output("#{bin}/meroxa version").match(/2.10.0/)
  end
end
