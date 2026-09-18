class Steward < Formula
  desc "Discover, understand, and safely clean up cloud resources"
  homepage "https://loomx.ai/steward"
  version "0.2.0"
  license "Apache-2.0"
  on_macos do
    depends_on macos: :sonoma
    on_arm do
      url "https://github.com/loomx-ai/steward/releases/download/v0.2.0/steward_0.2.0_darwin_arm64.tar.gz"
      sha256 "c24540330525b0824805999f52dcf3d9d50825af3c95fa6ed52b2493e9154bb6"
    end
    on_intel do
      url "https://github.com/loomx-ai/steward/releases/download/v0.2.0/steward_0.2.0_darwin_amd64.tar.gz"
      sha256 "1b5a6a2900fcea34a06d48b534575504c3d596198435518325dbc37237ded976"
    end
  end
  on_linux do
    depends_on "ca-certificates"
    on_arm do
      url "https://github.com/loomx-ai/steward/releases/download/v0.2.0/steward_0.2.0_linux_arm64.tar.gz"
      sha256 "01da3a84d1fa77199028b17a66f1cbe3c226532be8647f0ebbbec827500717e9"
    end
    on_intel do
      url "https://github.com/loomx-ai/steward/releases/download/v0.2.0/steward_0.2.0_linux_amd64.tar.gz"
      sha256 "681a363dc78300eccc3d80c2104d756578c299e44bdd3cd260a7011bd9f830b6"
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
