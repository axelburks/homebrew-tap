cask "msgflow-app" do
  version "0.6.0"
  sha256 "d3bff5c6635ae3ce33a9e0bf6b9560c87780a573dbc8f44a822a4e624d4f112c"

  url "https://github.com/axelburks/msgflow/releases/download/v0.6.0/msgflow-app-0.6.0-macos-arm64.zip"
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
