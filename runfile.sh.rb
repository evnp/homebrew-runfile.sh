class RunfileSh < Formula
  desc "Language-agnostic project task runner built on the ubiquitous Make."
  homepage "https://github.com/evnp/runfile.sh"
  url "https://github.com/evnp/runfile.sh/archive/v0.0.3.tar.gz"
  license "MIT"

  def install
    man1.install "man/run.1"
    bin.install "runfile.sh" => "run"
  end

  test do
    assert_equal shell_output("#{bin}/run --runfile-version").chomp,
      "0.0.3"
  end
end
