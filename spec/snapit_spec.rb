require "spec_helper"
require "pathname"

describe Snapit do
  it "runs a script" do
    root_path  = Pathname.new(File.absolute_path(File.join(File.dirname(__FILE__))))
    asset_path = Pathname.new(File.absolute_path(File.join(File.dirname(__FILE__), "assets")))
    storage    = Snapit::Storage.new(root_path)
    res        = Snapit.run!(asset_path.join("screens.yml"), storage)
    expect(res.length).to eq(2)
  end
end