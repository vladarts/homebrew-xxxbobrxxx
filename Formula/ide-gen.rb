# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class IdeGen < Formula
  desc ""
  homepage "https://github.com/xxxbobrxxx/ide-gen"
  version "0.0.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/xxxbobrxxx/ide-gen/releases/download/v0.0.4/ide-gen_0.0.4_Darwin_arm64.tar.gz"
      sha256 "69d95672f9555d5677e8055307fa2555304a48d2796b005c2501f62e9ac6a490"

      def install
        bin.install "ide-gen"

        # Install bash completion
        output = Utils.safe_popen_read(bin/"ide-gen", "completion", "bash")
        (bash_completion/"ide-gen").write output

        # Install zsh completion
        output = Utils.safe_popen_read(bin/"ide-gen", "completion", "zsh")
        (zsh_completion/"_ide-gen").write output
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/xxxbobrxxx/ide-gen/releases/download/v0.0.4/ide-gen_0.0.4_Darwin_x86_64.tar.gz"
      sha256 "0be19b222ca2835f9c2d3e29d2136a51533a26a77fb8a77d021883732faa5b2b"

      def install
        bin.install "ide-gen"

        # Install bash completion
        output = Utils.safe_popen_read(bin/"ide-gen", "completion", "bash")
        (bash_completion/"ide-gen").write output

        # Install zsh completion
        output = Utils.safe_popen_read(bin/"ide-gen", "completion", "zsh")
        (zsh_completion/"_ide-gen").write output
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/xxxbobrxxx/ide-gen/releases/download/v0.0.4/ide-gen_0.0.4_Linux_arm64.tar.gz"
      sha256 "a6c8070dfe21bdd13765569af50cc6f4faa12abde5b1003d0f587453ec721369"

      def install
        bin.install "ide-gen"

        # Install bash completion
        output = Utils.safe_popen_read(bin/"ide-gen", "completion", "bash")
        (bash_completion/"ide-gen").write output

        # Install zsh completion
        output = Utils.safe_popen_read(bin/"ide-gen", "completion", "zsh")
        (zsh_completion/"_ide-gen").write output
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/xxxbobrxxx/ide-gen/releases/download/v0.0.4/ide-gen_0.0.4_Linux_x86_64.tar.gz"
      sha256 "06780f7709027625293b892ec92fd8b3fc753f7bff1912dedd506841c2dcad42"

      def install
        bin.install "ide-gen"

        # Install bash completion
        output = Utils.safe_popen_read(bin/"ide-gen", "completion", "bash")
        (bash_completion/"ide-gen").write output

        # Install zsh completion
        output = Utils.safe_popen_read(bin/"ide-gen", "completion", "zsh")
        (zsh_completion/"_ide-gen").write output
      end
    end
  end

  test do
    system "#{bin}/ide-gen version"
  end
end
