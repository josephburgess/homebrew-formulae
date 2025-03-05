# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class Gust < Formula
  desc "Command line weather app written in go"
  homepage "https://github.com/josephburgess/gust"
  url "https://github.com/josephburgess/gust/archive/refs/tags/v0.0.6.tar.gz"
  sha256 "5385f8e93c4785a5d58d1b9bd42392d70f0ea8569b29028a4588c8c16a4dcd8f"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/gust"
  end

  test do
    assert_match "Gust Weather", shell_output("#{bin}/gust -h", 2)
  end
end
