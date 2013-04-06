# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'guilded/version'

Gem::Specification.new do |spec|
  spec.name          = "guilded"
  spec.version       = Guilded::VERSION
  spec.authors       = ["Jason Harrelson"]
  spec.email         = ["jason@lookforwardenterprises.com"]
  spec.description   = %q{A set of tools that work with the Rails asset pipeline to help in authoring GUI components.}
  spec.summary       = %q{A set of tools that work with the Rails asset pipeline to help in authoring GUI components.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "rb-fsevent", "~> 0.9"
  spec.add_development_dependency "rspec",   "~> 2.0"

  spec.add_dependency "activesupport", "~> 3.0"
  spec.add_dependency "rails", "~> 3.0"
end
