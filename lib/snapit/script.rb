require "yaml"

module Snapit
  class Script
    attr_reader :script
    attr_reader :storage

    def initialize(path, storage)
      @script = YAML.load_file(path)
      storage.set_script_name!(self.name)
      @storage = storage
    end

    def name
      @script["name"]
    end

    def urls
      @script["urls"]
    end
  end
end