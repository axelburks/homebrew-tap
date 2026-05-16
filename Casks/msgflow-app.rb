cask "msgflow-app" do
  version "0.5.0"
  sha256 "b6d00e2a21aaa0b5b1514bbc9f6a07231cf2d992415941972f61d24732f19d20"

  url "https://github.com/axelburks/msgflow/releases/download/v0.5.0/msgflow-app-0.5.0-macos-arm64.zip"
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
