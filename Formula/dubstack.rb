class Dubstack < Formula
  desc "CLI for managing stacked diffs (dependent git branches)"
  homepage "https://github.com/wiseiodev/dubstack"
  url "https://registry.npmjs.org/dubstack/-/dubstack-1.8.0.tgz"
  sha256 "6b752a976cb4c402fc6d679f03d96fd97bf9d33136205eefde601d1575d51d3f"
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
