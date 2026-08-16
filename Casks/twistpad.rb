cask "twistpad" do
  version "1.5"
  sha256 "0bf6926698a485305b119377efba0ffa5596eb836430f23fd9d35bf5743a1f3e"

  url "https://github.com/Toxic880/TwistPad/releases/download/v#{version}/TwistPad-#{version}.zip"
  name "TwistPad"
  desc "Twist two fingers on the trackpad to set the volume"
  homepage "https://github.com/Toxic880/TwistPad"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "TwistPad.app"

  uninstall quit: "com.lukek.TwistPad"

  zap trash: [
    "~/Library/Preferences/com.lukek.TwistPad.plist",
  ]
end
