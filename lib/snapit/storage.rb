require "pathname"
require "fileutils"

module Snapit
  class Storage
    attr_reader :path

    def initialize(root_path)
      @path = root_path.join("snapit_captures")
      FileUtils.mkdir_p(path) unless Dir.exists?(path)
    end

    def set_script_name!(name)
      @script_name = name
      @script_name = @script_name.gsub(/[^0-9a-z ]/i, '').gsub(/ /i, '_')
    end

    def script_name
      @script_name || "default"
    end

    def output_path
      p = path.join(script_name)
      FileUtils.mkdir_p(p) unless Dir.exists?(p)
      p
    end
  end
end