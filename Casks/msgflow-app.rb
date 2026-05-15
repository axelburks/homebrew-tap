cask "msgflow-app" do
  version "0.3.3"
  sha256 "80f8981b974764f3a4c5dd2a2a519bec4045c4b53cb2ba34a7ec635e554dcd95"

  url "https://github.com/axelburks/msgflow/releases/download/v0.3.3/msgflow-app-0.3.3-macos-arm64.zip"
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
