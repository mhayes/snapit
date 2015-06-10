require "spec_helper"
require "pathname"

describe Snapit::Storage do
  it "maintains storage paths" do
    expect(storage.path).to eq(root_path.join("snapit_captures"))
  end
end