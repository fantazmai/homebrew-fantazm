# Homebrew tap formula for Fantazm.
#
# Install:
#
#   brew install fantazmai/fantazm/fantazm
#
# Or, if you prefer the explicit two-step:
#
#   brew tap fantazmai/fantazm
#   brew install fantazm
#
# Updates ride your normal `brew upgrade` after that.
#
# This formula is updated automatically by goreleaser on each fantazm
# release (see fantazmai/fantazm .goreleaser.yml). Manual edits are
# overwritten — modify the goreleaser config instead if you need to
# change install behavior.

class Fantazm < Formula
  desc "Self-hosted AI agent platform — single binary, multi-LLM, encrypted vault, sandboxed skills"
  homepage "https://github.com/fantazmai/fantazm"
  version "0.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fantazmai/fantazm/releases/download/v0.8.0/fathom_0.8.0_Darwin_arm64.tar.gz"
      sha256 "4e5d1766c8df0bec6afdbe6369e0315e10a732a4bcf966112853458410bd46a8"
    else
      url "https://github.com/fantazmai/fantazm/releases/download/v0.8.0/fathom_0.8.0_Darwin_x86_64.tar.gz"
      sha256 "a911a684ddb091d29f4e06b1e9ed88e7f08ae16c6d54ffdc3ff94106097874f9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fantazmai/fantazm/releases/download/v0.8.0/fathom_0.8.0_Linux_arm64.tar.gz"
      sha256 "8777c920a78b0e5d86330f1ca1e5022a3837bca9206a8802932948038839c03d"
    else
      url "https://github.com/fantazmai/fantazm/releases/download/v0.8.0/fathom_0.8.0_Linux_x86_64.tar.gz"
      sha256 "74090af31996879f1b7ddcf632546d3aff54b895b2c5b4894c0cdfa1d9acea2a"
    end
  end

  def install
    bin.install "fantazm"
  end

  test do
    # Bare-version smoke. `fantazm --version` works even before
    # `fantazm init` has been run.
    assert_match version.to_s, shell_output("#{bin}/fantazm --version")
  end
end
