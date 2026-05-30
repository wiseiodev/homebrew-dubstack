class Dubstack < Formula
  desc "CLI for managing stacked diffs (dependent git branches)"
  homepage "https://github.com/wiseiodev/dubstack"
  url "https://registry.npmjs.org/dubstack/-/dubstack-2.0.0.tgz"
  sha256 "9b1e5145578565368dd1a65525dce3c4fb8042d0815fe79cb08492580fe6804d"
  license "MIT"

  depends_on "node"

  conflicts_with "dub", because: "both install a `dub` binary"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dub --version")
  end
end
