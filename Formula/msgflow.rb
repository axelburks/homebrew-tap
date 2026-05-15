class Msgflow < Formula
  desc "macOS message forwarding background service"
  homepage "https://github.com/axelburks/msgflow"
  url "https://github.com/axelburks/msgflow/releases/download/v0.2.0/msgflow-0.2.0-macos-arm64.tar.gz"
  sha256 "4764f9af6d29b70ee2d052827e4f6fb75027225595389865fe1b6882a6dea933"
  version "0.2.0"

  depends_on macos: :ventura

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"msgflow"
  end

  service do
    run [opt_bin/"msgflow"]
    keep_alive true
    working_dir Dir.home
    environment_variables MSGFLOW_LOG_FILE: File.join(Dir.home, ".config", "msgflow", "logs", "msgflow-service.log")
    log_path File.join(Dir.home, ".config", "msgflow", "logs", "msgflow-service.log")
    error_log_path File.join(Dir.home, ".config", "msgflow", "logs", "msgflow-service.log")
  end

  def caveats
    <<~EOS
      Config file: ~/.config/msgflow/config.yaml
      Log file:    ~/.config/msgflow/logs/msgflow-service.log
      Start at login: brew services start msgflow
      Stop service:    brew services stop msgflow
      Run foreground:  msgflow
    EOS
  end

  test do
    assert_match "usage", shell_output("#{bin}/msgflow --help")
  end
end
