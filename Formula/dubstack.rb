class Dubstack < Formula
  desc "CLI for managing stacked diffs (dependent git branches)"
  homepage "https://github.com/wiseiodev/dubstack"
  url "https://registry.npmjs.org/dubstack/-/dubstack-0.2.0.tgz"
  sha256 "99882dc452fc025f86c6339ae5780e8ca341af8bbb4efa96dc836bc858a1d5af"
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
