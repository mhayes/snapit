# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'snapit/version'

Gem::Specification.new do |spec|
  spec.name          = "snapit"
  spec.version       = Snapit::VERSION
  spec.authors       = ["Mark Hayes"]
  spec.email         = ["me@markhay.es"]

  spec.summary       = %q{Automate your screen captures}
  spec.description   = %q{A simple way to take screenshots over and over again}
  spec.homepage      = "https://github.com/mhayes/snapit"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "selenium-webdriver", "~> 2.46.2"
  spec.add_dependency "thor", "~> 0.19.1"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
