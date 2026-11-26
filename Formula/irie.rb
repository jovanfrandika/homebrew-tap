class Irie < Formula
  desc "Spotify client for the terminal: play, visualize, browse, queue and Jam"
  homepage "https://github.com/jovanfrandika/irie"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jovanfrandika/irie/releases/download/v0.2.0/irie-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "e8316fb9d7cfec385815e38483d452319fb53a36b93d1a5a7d619cc66588d4d0"
    end
    on_intel do
      url "https://github.com/jovanfrandika/irie/releases/download/v0.2.0/irie-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "e82f815976fcd8af3a83d7ca41cc8bdfa8492bd91bbec4acefab4cfccd896391"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jovanfrandika/irie/releases/download/v0.2.0/irie-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "756c245fd34e078d3fce50effd82202f26ab2384cc4372dc9f0e6eb8ee009ecd"
    end
    on_intel do
      url "https://github.com/jovanfrandika/irie/releases/download/v0.2.0/irie-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "44ea0dbe8294fef4dee900e0c11572a0c75ae2ec167804bda00fa9ad3f596d6a"
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
