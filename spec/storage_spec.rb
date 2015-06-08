require "spec_helper"
require "pathname"

describe Snapit::Storage do
  it "maintains storage paths" do
    root_path = Pathname.new(File.absolute_path(File.join(File.dirname(__FILE__))))
    storage = Snapit::Storage.new(root_path)
    expect(storage.path).to eq(root_path.join("snapit_captures"))
  end
end