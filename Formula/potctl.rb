# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Potctl < Formula
  desc "CLI for iofog"
  homepage "https://github.com/datasance/potctl"
  version "1.3.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/datasance/potctl/releases/download/v1.3.2/potctl_1.3.2_macos_amd64.tar.gz"
      sha256 "378998f8652ff47380a2cc7e9061c05a4912eaca0545c21cc0a249dc2f58945a"

      def install
        bin.install "potctl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/datasance/potctl/releases/download/v1.3.2/potctl_1.3.2_macos_arm64.tar.gz"
      sha256 "1912854eb975644b9b28f53d56c420a42d77eaa42fd919352aa5c86806b29bad"

      def install
        bin.install "potctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/datasance/potctl/releases/download/v1.3.2/potctl_1.3.2_armv6.tar.gz"
      sha256 "0a8736f958be153a8c34bdcd3dd2855f4abc9156af302561ddbe1e5a54bf9a34"

      def install
        bin.install "potctl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/datasance/potctl/releases/download/v1.3.2/potctl_1.3.2_arm64.tar.gz"
      sha256 "29d998f3425d9d489414ec8e8b6a8cd95868ca3ba91012fb79db9364160dbb97"

      def install
        bin.install "potctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/datasance/potctl/releases/download/v1.3.2/potctl_1.3.2_amd64.tar.gz"
      sha256 "5f5881082390bf298f07e9728034b43762eb9a28aa69da6770faababa411b5e9"

      def install
        bin.install "potctl"
      end
    end
  end

  test do
    system "#{bin}/potctl version"
  end
end
