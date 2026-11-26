class Irie < Formula
  desc "Spotify client for the terminal: play, visualize, browse, queue and Jam"
  homepage "https://github.com/jovanfrandika/irie"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jovanfrandika/irie/releases/download/v0.1.0/irie-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "8dc3899b9ebdd5c3d2edf13def8c82fb09e07e227588368a75fe5ce46afc0ef5"
    end
    on_intel do
      url "https://github.com/jovanfrandika/irie/releases/download/v0.1.0/irie-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "f8703fe6c2dd52757f29a8e128ed52d66cb003751a23470d978522df0db89ca7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jovanfrandika/irie/releases/download/v0.1.0/irie-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "def105f5e6db1a55dc7e87487b5fd0780fffdc35aad550ee759323b1fbf616d2"
    end
    on_intel do
      url "https://github.com/jovanfrandika/irie/releases/download/v0.1.0/irie-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f7c18043f938bb837506b2ebc715ac8a221e9b35d8a068ff5b586f37fdfeab1e"
    end
  end

  def install
    bin.install "irie"
    pkgshare.install "config.example.toml"
  end

  def caveats
    <<~EOS
      irie needs a Spotify Premium account. Run `irie` and log in through your browser.
      An example config is at:
        #{opt_pkgshare}/config.example.toml
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/irie --version")
  end
end
