class Prism < Formula
  desc "Neon terminal control panel that toggles macOS background noise"
  homepage "https://github.com/fintermxyz/prism"
  url "https://github.com/fintermxyz/prism/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "b23d583fd728b8a1d813d490441c3107df2bbfd400d15c1ee7bf3bb30869fd1a"
  license "MIT"

  depends_on :macos

  def install
    system "swiftc", "-O", "prism.swift", "-o", "prism"
    bin.install "prism"
  end

  def caveats
    <<~EOS
      Admin toggles (indexing, Time Machine, analytics) pop the native
      macOS password dialog. Start with: prism status
    EOS
  end

  test do
    assert_match "Refract your Mac", shell_output("#{bin}/prism --help")
  end
end
