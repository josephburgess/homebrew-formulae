# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class Gust < Formula
  desc "Command line weather app written in go"
  homepage "https://github.com/josephburgess/gust"
  url "https://github.com/josephburgess/gust/archive/refs/tags/v0.0.2.tar.gz"
  sha256 "9e41c218cf61efc2bd52851f1ae50c6e17001f26e63e4bd9b3c76d417e22060f"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/gust"
  end

  test do
    assert_match "Gust Weather", shell_output("#{bin}/gust -h", 2)
  end
end
