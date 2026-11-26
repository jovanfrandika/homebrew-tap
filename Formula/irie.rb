class Irie < Formula
  desc "Spotify client for the terminal: play, visualize, browse, queue and Jam"
  homepage "https://github.com/jovanfrandika/irie"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jovanfrandika/irie/releases/download/v0.1.1/irie-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "1dc8f5ea0271f2993ec85b5d8e96b706aa728ab5c4afb880fea64099a8e4714b"
    end
    on_intel do
      url "https://github.com/jovanfrandika/irie/releases/download/v0.1.1/irie-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "8ed103705de582f80af9f5838d272e3363847db79e26f99a7cced8f871ea6079"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jovanfrandika/irie/releases/download/v0.1.1/irie-v0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4cc64ee685a9f621f3a799f9509f41f4b207b8241d0fbbc94840e1f525e357a8"
    end
    on_intel do
      url "https://github.com/jovanfrandika/irie/releases/download/v0.1.1/irie-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "01c4364e62b10dd4e68619dc60daf99284ce8002a6df45f73683cf740c588d37"
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
