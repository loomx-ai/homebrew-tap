class Steward < Formula
  desc "Discover, understand, and safely clean up cloud resources"
  homepage "https://loomx.ai/steward"
  version "0.2.0"
  license "Apache-2.0"
  on_macos do
    depends_on macos: :sonoma
    on_arm do
      url "https://github.com/loomx-ai/steward/releases/download/v0.2.0/steward_0.2.0_darwin_arm64.tar.gz"
      sha256 "11407f3d6d4791095cf996bcf02a4ec117dfadff3cd78ec9952ec3821746ccd0"
    end
    on_intel do
      url "https://github.com/loomx-ai/steward/releases/download/v0.2.0/steward_0.2.0_darwin_amd64.tar.gz"
      sha256 "d8e6986d8fa33725832401abe3d0dfec7ed18ab5afe9061e09fad3cba4199254"
    end
  end
  on_linux do
    depends_on "ca-certificates"
    on_arm do
      url "https://github.com/loomx-ai/steward/releases/download/v0.2.0/steward_0.2.0_linux_arm64.tar.gz"
      sha256 "1129e29f5e4bbe181d0c13f05533d9dde75a175f799b87058e76b24b8e794e04"
    end
    on_intel do
      url "https://github.com/loomx-ai/steward/releases/download/v0.2.0/steward_0.2.0_linux_amd64.tar.gz"
      sha256 "00c6ebc05f06a98811fc19eefda0e8da53794c26766042e936330f8246bfb4bc"
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
