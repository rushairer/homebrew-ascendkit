class Ascendkit < Formula
  desc "Local-first App Store release preparation toolkit"
  homepage "https://github.com/rushairer/AscendKit"
  url "https://github.com/rushairer/AscendKit/releases/download/v1.5.0/ascendkit-1.5.0-macos-universal.tar.gz"
  sha256 "3d1bb0fad7bd1f45b240fa45ef7094715040554bf1dbf64a510b342f5dd72c4a"
  license "MIT"

  def install
    bin.install "bin/ascendkit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ascendkit --version")
  end
end
