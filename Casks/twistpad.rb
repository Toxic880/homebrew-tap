cask "twistpad" do
  version "1.5"
  sha256 "c6aed3c926ef1669e859d619576ed91feb7168dd4953f5fd41984a27e0986045"

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
