require "spec_helper"

describe Snapit::Engine do
  it "captures a screen" do
    Snapit::Engine.run(storage) do |driver|
      file = driver.capture!("http://apple.com", "apple")
      expect(File.basename(file)).to eq("apple.png")
    end
  end
end