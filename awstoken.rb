class Awstoken < Formula
  desc "Bash wrapper around awscli for easy temporary security credential generation for AWS API"
  homepage "https://github.com/vandot/awstoken"
  url "https://github.com/vandot/awstoken/archive/v0.1.0.tar.gz"
  sha256 "c8d886bebc3dcd5b61f0babf9e028199d28500582675a8080eeefa1b3ab949f1"

  depends_on "awscli"
  depends_on "jq"

  def install
    bin.install "awstoken"
  end

  test do
    system "#{bin}/awstoken", "--help"
  end

end
