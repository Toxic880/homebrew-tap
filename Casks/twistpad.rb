cask "twistpad" do
  version "1.2"
  sha256 "144e5e213bee0bbaa19551cd887d7dd03d295193a4fcf7216c4f5980676293f0"

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
