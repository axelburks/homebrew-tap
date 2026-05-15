cask "msgflow-app" do
  version "0.2.0"
  sha256 "2c3eb8a830d0bb952a031aaf308877b0c8f56eb1ba2563538c1e4fc1601dc520"

  url "https://github.com/axelburks/msgflow/releases/download/v0.2.0/msgflow-app-0.2.0-macos-arm64.zip"
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
