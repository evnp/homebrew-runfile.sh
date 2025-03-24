class RunfileSh < Formula
  desc "Language-agnostic project task runner built on the ubiquitous Make."
  homepage "https://github.com/evnp/runfile.sh"
  url "https://github.com/evnp/runfile.sh/archive/v0.0.3.tar.gz"
  sha "f3d6e37ab81318c8698a0b81b95a2b4e82f485c94ad2639361ff21710021ab06"
  license "MIT"

  def install
    man1.install "man/run.1"
    bin.install "runfile.sh" => "run"
  end

  test do
    assert_equal shell_output("#{bin}/run --version").chomp,
      "0.0.3"
  end
end
