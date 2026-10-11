cask "terminal" do
  version "0.1.2"
  sha256 "6fbb0a114739def758ff2e2b8c8707d7012127c5c4bca3e58f0a37d18ba204b4"

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
