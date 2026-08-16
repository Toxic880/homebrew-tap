cask "twistpad" do
  version "1.1"
  sha256 "00358c2c5dd61361e30c59329fa55d7e149b325b05a957ef5d33356958786505"

  url "https://github.com/Toxic880/TwistPad/releases/download/v#{version}/TwistPad-#{version}.zip"
  name "TwistPad"
  desc "Twist two fingers on the trackpad to set the volume"
  homepage "https://github.com/Toxic880/TwistPad"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "TwistPad.app"

  uninstall quit: "com.lukek.TwistPad"

  zap trash: [
    "~/Library/Preferences/com.lukek.TwistPad.plist",
  ]
end
