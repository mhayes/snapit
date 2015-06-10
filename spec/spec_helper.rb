require 'rubygems'
require 'bundler/setup'
require 'snapit'
require 'pathname'

module Helpers
  def root_path
    Pathname.new(File.absolute_path(File.join(File.dirname(__FILE__))))
  end

  def asset_path
    root_path.join("assets")
  end

  def storage
    Snapit::Storage.new(root_path)
  end
end

RSpec.configure do |c|
  c.include Helpers
end