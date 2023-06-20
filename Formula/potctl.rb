# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Potctl < Formula
    desc "CLI for iofog"
    homepage "https://github.com/datasance/potctl"
    version "1.0.0~dev"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/datasance/potctl/releases/download/v1.0.0/potctl_1.0.0~dev_macos_arm64.tar.gz"
        sha256 "00514bbf8269cf1019f0ddfa313b3bce22d79f7ec4529df55b5db4e697bedfcd"
  
        def install
          bin.install "potctl"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/datasance/potctl/releases/download/v1.0.0/potctl_1.0.0~dev_macos_amd64.tar.gz"
        sha256 "9ab82cbdd39862e113f2f427ec78c6079259ef5b5525f915bde3addc9c374eaf"
  
        def install
          bin.install "potctl"
        end
      end
    end
  
    on_linux do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "https://github.com/datasance/potctl/releases/download/v1.0.0/potctl_1.0.0~dev_arm64.tar.gz"
        sha256 "743fad02a946ee9e1b0fc643cfddef80b54945ee8522adf85f35dfb00a065376"
  
        def install
          bin.install "potctl"
        end
      end
      if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
        url "https://github.com/datasance/potctl/releases/download/v1.0.0/potctl_1.0.0~dev_armv6.tar.gz"
        sha256 "bcb3f67d6f83b6d313bc14ad7dfa02297e43ff967d8dea9e22a7e7602c3824a7"
  
        def install
          bin.install "potctl"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/datasance/potctl/releases/download/v1.0.0/potctl_1.0.0~dev_amd64.tar.gz"
        sha256 "fdb3f6d92da0e58a51a955d8d904f7a878804b3a24d270e48fcae04cdff529b6"
  
        def install
          bin.install "potctl"
        end
      end
    end
  
    test do
      system "#{bin}/potctl version"
    end
  end
  