class Steward < Formula
  desc "Discover, understand, and safely clean up cloud resources"
  homepage "https://loomx.ai/steward"
  version "0.2.1"
  license "Apache-2.0"
  on_macos do
    depends_on macos: :sonoma
    on_arm do
      url "https://github.com/loomx-ai/steward/releases/download/v0.2.1/steward_0.2.1_darwin_arm64.tar.gz"
      sha256 "55a3dda341d72f077f489614580ca9e91daa4322a6e57ee3f17e069f07d4100e"
    end
    on_intel do
      url "https://github.com/loomx-ai/steward/releases/download/v0.2.1/steward_0.2.1_darwin_amd64.tar.gz"
      sha256 "387ccb12c6351788e7df2ca5f21caa45967a552b5d43ca96d7ab9eb187691bf9"
    end
  end
  on_linux do
    depends_on "ca-certificates"
    on_arm do
      url "https://github.com/loomx-ai/steward/releases/download/v0.2.1/steward_0.2.1_linux_arm64.tar.gz"
      sha256 "d43d0c3f346dc5268fa927d80a26dc52a55b28094b22d63e67908baa46c2df3f"
    end
    on_intel do
      url "https://github.com/loomx-ai/steward/releases/download/v0.2.1/steward_0.2.1_linux_amd64.tar.gz"
      sha256 "e2c9d3d01917ff69ed2ee7f831da90ecc390ec55289e512eba250b1dbe600400"
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
