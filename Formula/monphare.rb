# typed: false
# frozen_string_literal: true

class Monphare < Formula
  desc "Terraform/OpenTofu module constraint analyzer and dependency mapper"
  homepage "https://github.com/tanguc/monphare"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tanguc/monphare/releases/download/v#{version}/monphare-darwin-aarch64.tar.gz"
      sha256 "e31117906f2a3cd6075d674faaf7216d6ef183145941a9219121dad41542bdf3"
    else
      url "https://github.com/tanguc/monphare/releases/download/v#{version}/monphare-darwin-x86_64.tar.gz"
      sha256 "2941d84d12c4d5fffe004d76b511ab98e5020cb1fe612add292d52e494a08184"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tanguc/monphare/releases/download/v#{version}/monphare-linux-aarch64.tar.gz"
      sha256 "152ef5cef57dd055d60a3e96ecfa66d0f08c410c92a56e1d9e4266a0b46c4dd6"
    else
      url "https://github.com/tanguc/monphare/releases/download/v#{version}/monphare-linux-x86_64.tar.gz"
      sha256 "cd115546ac9e2a2965001c7d4f0f1e2c51d00796abb189dabd00389b01ec2009"
    end
  end

  def install
    bin.install "monphare"
  end

  test do
    system "#{bin}/monphare", "--version"
  end
end
