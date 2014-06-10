# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'clove/version'

Gem::Specification.new do |spec|
  spec.name          = "clove"
  spec.version       = Clove::VERSION
  spec.authors       = ["Clinton Dreisbach"]
  spec.email         = ["clinton@theironyard.com"]
  spec.summary       = %q{Creates very simple Ruby projects.}
  spec.description   = %q{Creates very simple Ruby projects not intended to be gems, but just
  to be well-designed programs.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport", "~> 4.0.5"
  spec.add_dependency "thor", "~> 0.19.1"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
