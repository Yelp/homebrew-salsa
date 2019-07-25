class Salsa < Formula
  desc "A tool for creating sketch files using the iOS simulator"
  homepage "https://github.com/Yelp/salsa"
  url "https://github.com/Yelp/salsa.git",
    :using => :git,
    :tag => 'v0.7.0'
  version "0.7.0"
  depends_on :xcode => "9.3"
  
  def install
    system "make", "binary"
    bin.install "SalsaCompiler/build/Release/salsa"
  end

  test do
    system bin/"salsa", "--help"
  end
end
