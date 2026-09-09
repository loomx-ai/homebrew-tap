class Steward < Formula
  desc "Discover, understand, and safely clean up cloud resources"
  homepage "https://loomx.ai/steward"
  version "0.1.0"
  license "Apache-2.0"
  on_macos do
    depends_on macos: :sonoma
    on_arm do
      url "https://github.com/loomx-ai/steward/releases/download/v0.1.0/steward_0.1.0_darwin_arm64.tar.gz"
      sha256 "932872e51c5a69022dc6476ac642536980dd48e9e43a224820364c22292c52e1"
    end
    on_intel do
      url "https://github.com/loomx-ai/steward/releases/download/v0.1.0/steward_0.1.0_darwin_amd64.tar.gz"
      sha256 "50d9ffc678448abe0db0b1859018cb53e7146df73860309896cbe16b2ea645f4"
    end
  end
  on_linux do
    depends_on "ca-certificates"
    on_arm do
      url "https://github.com/loomx-ai/steward/releases/download/v0.1.0/steward_0.1.0_linux_arm64.tar.gz"
      sha256 "33ba319bb58b18ffae5e053104fef04badb8abb72e98341bfc8ec85aff49d65e"
    end
    on_intel do
      url "https://github.com/loomx-ai/steward/releases/download/v0.1.0/steward_0.1.0_linux_amd64.tar.gz"
      sha256 "c50d13b6343f53267bd068804e4c205511d83384c51d492afd51dbd63cbc4249"
    end
  end
  def install
    bin.install "steward"
    generate_completions_from_executable(bin/"steward", "completion")
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/steward --version")
  end
end
