cask "terminal" do
  version "0.1.1"
  sha256 "c00289e8bb6259f76597bc835aaef6c0e2a35a6f4bc790e2bdee2ae8982cb640"

  url "https://github.com/fintermxyz/terminal/releases/download/v#{version}/terminal.dmg"
  name "terminal"
  desc "GPU-accelerated terminal with LuaJIT modules and built-in file viewers"
  homepage "https://github.com/fintermxyz/terminal"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "terminal.app"

  zap trash: "~/.config/terminal"

  caveats <<~EOS
    terminal is not notarized yet. If macOS blocks it on first launch, open
    System Settings → Privacy & Security and click "Open Anyway".
  EOS
end
