require "selenium-webdriver"

module Snapit
  class Engine
    attr_reader :storage
    attr_reader :width

    def initialize(storage, width)
      @storage = storage
      @width = width
    end

    def self.run(storage, width = 1280)
      begin
        engine = new(storage, width)
        yield engine
      ensure
        engine.stop!
      end
    end

    def output_path
      
    end

    def capture!(url, name_or_idx)
      driver.get(url)
      driver.save_screenshot("#{storage.output_path.join(name_or_idx)}.png")
    end

    def stop!
      driver.quit
    end

  private

    def driver
      return @driver if @driver
      @driver = Selenium::WebDriver.for :firefox
      @driver.manage.window.resize_to(width, 3000)
      @driver
    end
  end
end