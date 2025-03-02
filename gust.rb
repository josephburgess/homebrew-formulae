class Gust < Formula
  desc "A simple command line weather app"
  homepage "https://github.com/josephburgess/gust"
  url "https://github.com/josephburgess/gust/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "cbfc5827706d56ebd0e3e4559bbc3b3dd3ebd09f8fe67e4826db24c9e977032c"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/gust"
  end

  test do
    assert_match "Gust Weather", shell_output("#{bin}/gust -h", 2)
  end
end
