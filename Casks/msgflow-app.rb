cask "msgflow-app" do
  version "0.1.0"
  sha256 "909fcc776c5e96d6d9e0e3f2fa77e09552bc634bf87b33d0fa1637b6e0689bdd"

  url "https://github.com/axelburks/msgflow/releases/download/v0.1.0/msgflow-app-0.1.0-macos-arm64.zip"
  name "msgflow"
  desc "macOS message forwarding menu bar app"
  homepage "https://github.com/axelburks/msgflow"

  depends_on macos: ">= :big_sur"

  app "msgflow.app"

  zap trash: [
    "~/.config/msgflow",
    "~/Library/LaunchAgents/com.axel.msgflow.ui.plist",
    "~/Library/Logs/msgflow.log",
    "~/Library/Logs/msgflow-service.log",
  ]
end
