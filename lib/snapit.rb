require "snapit/version"
require "snapit/storage"
require "snapit/script"
require "snapit/engine"

module Snapit
  def self.run!(path, storage)
    res = []
    script = Snapit::Script.new(path, storage)
    Snapit::Engine.run(script.storage) do |driver|
      script.urls.each do |obj|
        obj.keys.each do |key|
          name = key
          url  = obj[key]
          res << {path: driver.capture!(url, name)}
        end
      end
    end
    res
  end
end
