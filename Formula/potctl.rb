# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Potctl < Formula
  desc "CLI for managing Datasance PoT's Distributed Edge Compute clusters"
  homepage "https://github.com/datasance/potctl"
  version "1.3.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/datasance/potctl/releases/download/v1.3.6/potctl_1.3.6_macos_amd64.tar.gz"
      sha256 "b151e22eeffc535240ac3e8b4d14cd6f92d2e87810c9dd9624b8d0c4658c6561"

      def install
        bin.install "potctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/datasance/potctl/releases/download/v1.3.6/potctl_1.3.6_armv6.tar.gz"
      sha256 "dcb692ab7a346ec24ce6c5ff58248103993cc07abb19ef51eb79833f681463e5"

      def install
        bin.install "potctl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/datasance/potctl/releases/download/v1.3.6/potctl_1.3.6_arm64.tar.gz"
      sha256 "f5686558db128aeceb207bbe811898843870c444024a342600312d7a0541367b"

      def install
        bin.install "potctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/datasance/potctl/releases/download/v1.3.6/potctl_1.3.6_amd64.tar.gz"
      sha256 "fbd71840a7657bbd4530d3de35c94d5ac4d928a2987c958fa97d7dd3a5a9502f"

      def install
        bin.install "potctl"
      end
    end
  end

  test do
    system "#{bin}/potctl version"
  end
end
