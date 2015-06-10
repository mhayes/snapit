require "spec_helper"

describe Snapit do
  it "runs a script" do
    res        = Snapit.run!(asset_path.join("screens.yml"), storage)
    expect(res.length).to eq(2)
  end
end