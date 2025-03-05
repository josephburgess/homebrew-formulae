# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class Gust < Formula
  desc "Command line weather app written in go"
  homepage "https://github.com/josephburgess/gust"
  url "https://github.com/josephburgess/gust/archive/refs/tags/v0.0.8.tar.gz"
  sha256 "5f364446e73339f4983890f15d326407bbb2bea732a0897c4cc46c698dfcbd67"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/gust"
  end

  test do
    assert_match "Gust Weather", shell_output("#{bin}/gust -h", 2)
  end
end
