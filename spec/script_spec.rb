require "spec_helper"

describe Snapit::Script do
  it "lists urls in a script" do
    script = Snapit::Script.new(asset_path.join("screens.yml"), storage)
    expect(script.urls.length).to eq(2)
  end
end