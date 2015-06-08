require "spec_helper"
require "pathname"

describe Snapit::Engine do
  it "captures a screen" do
    root_path = Pathname.new(File.absolute_path(File.join(File.dirname(__FILE__))))
    storage = Snapit::Storage.new(root_path)
    Snapit::Engine.run(storage) do |driver|
      file = driver.capture!("http://apple.com", "apple")
      expect(File.basename(file)).to eq("apple.png")
    end
  end
end