# typed: false
# frozen_string_literal: true

class Monphare < Formula
  desc "Terraform/OpenTofu module constraint analyzer and dependency mapper"
  homepage "https://github.com/tanguc/monphare"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tanguc/monphare/releases/download/v#{version}/monphare-darwin-aarch64.tar.gz"
      sha256 "b726eb7c9e86efbdfd7545514b00d956f5a8a32f0b5d3cb180b0c33bf892515b"
    else
      url "https://github.com/tanguc/monphare/releases/download/v#{version}/monphare-darwin-x86_64.tar.gz"
      sha256 "6e2d2df2d69a0eef64e405712db18963256c46ad823cff51b2807e9c8b10815e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tanguc/monphare/releases/download/v#{version}/monphare-linux-aarch64.tar.gz"
      sha256 "ae071d9e3c7947d104f419f138a7d0161830fa4ba16f203ec9fc96049a414b31"
    else
      url "https://github.com/tanguc/monphare/releases/download/v#{version}/monphare-linux-x86_64.tar.gz"
      sha256 "a90e85067ce7e3398d669d9968a845841b9ad3eabe035ff0e68cea4a48b5e665"
    end
  end

  def install
    bin.install "monphare"
  end

  test do
    system "#{bin}/monphare", "--version"
  end
end
