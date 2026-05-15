cask "msgflow-app" do
  version "0.4.0"
  sha256 "d5d0abc9d40cd5ea8ed4182cccf183c778b6f8a86183e3602830d6ca5c3ba615"

  url "https://github.com/axelburks/msgflow/releases/download/v0.4.0/msgflow-app-0.4.0-macos-arm64.zip"
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
