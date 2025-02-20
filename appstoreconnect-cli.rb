class AppstoreconnectCli < Formula
  desc "Command-line tool for interacting with Apple Appstore Connect API"
  homepage "https://github.com/axelburks/appstoreconnect-cli"
  head "https://github.com/axelburks/appstoreconnect-cli.git",
       :branch => "master"

  depends_on :xcode => ["11.4", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
        output = shell_output("#{bin}/asc -h 2>&1", 0)
        result = output.include? "OVERVIEW: A utility for interacting with the AppStore Connect API."
        assert_equal(result,true)
  end
end
