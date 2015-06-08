require "spec_helper"
require "pathname"

describe Snapit::Script do
  it "lists urls in a script" do
    root_path = Pathname.new(File.absolute_path(File.join(File.dirname(__FILE__))))
    storage = Snapit::Storage.new(root_path)
    asset_path = Pathname.new(File.absolute_path(File.join(File.dirname(__FILE__), "assets")))
    
    script = Snapit::Script.new(asset_path.join("screens.yml"), storage)

    expect(script.urls.length).to eq(2)
  end
end