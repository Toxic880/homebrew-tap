cask "twistpad" do
  version "1.7"
  sha256 "2b3c33958ee349285a33caeaeac2aa94ffab30f72bac4d51442573bbab34f876"

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
