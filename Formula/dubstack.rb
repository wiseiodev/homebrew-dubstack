class Dubstack < Formula
  desc "CLI for managing stacked diffs (dependent git branches)"
  homepage "https://github.com/wiseiodev/dubstack"
  url "https://registry.npmjs.org/dubstack/-/dubstack-1.1.0.tgz"
  sha256 "95f1333f58bfc3dbed622d1c69235199a1f342984a640f8b577edb59171bf26a"
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
