# typed: false
# frozen_string_literal: true

class Monphare < Formula
  desc "Terraform/OpenTofu module constraint analyzer and dependency mapper"
  homepage "https://github.com/tanguc/monphare"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tanguc/monphare/releases/download/v#{version}/monphare-darwin-aarch64.tar.gz"
      sha256 "2f5fecae3e6d365cc1b8de494081f1eb7da055d3aebacb4d63bb481b46936ba9"
    else
      url "https://github.com/tanguc/monphare/releases/download/v#{version}/monphare-darwin-x86_64.tar.gz"
      sha256 "df9a378ce3f12a64cd1120aec94dee2a87535d32b89fad932eb9fd0f2c00cc2f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tanguc/monphare/releases/download/v#{version}/monphare-linux-aarch64.tar.gz"
      sha256 "3ed939791030493b965a8ddc399970a7a074e852860c62cba7202fee3a09d613"
    else
      url "https://github.com/tanguc/monphare/releases/download/v#{version}/monphare-linux-x86_64.tar.gz"
      sha256 "511ad1937c3aad03cf00e867f09f5ff2b6aaa2f9275aa3f0055962dd1aff0dba"
    end
  end

  def install
    bin.install "monphare"
  end

  test do
    system "#{bin}/monphare", "--version"
  end
end
