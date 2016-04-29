# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'condenser/version'

Gem::Specification.new do |spec|
  spec.name          = "condenser"
  spec.version       = Condenser::VERSION
  spec.authors       = ["Dennis Walters"]
  spec.email         = ["dwalters@engineyard.com"]

  spec.summary       = %q{A tool for building ACI containers}
  spec.homepage      = "http://engineyard.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'belafonte', '~> 0.5'
  spec.add_dependency 'conchology', '~> 0.1'
  spec.add_dependency 'oj', '~> 2.15'

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'rspec',         '~> 3.4'
  spec.add_development_dependency 'aruba', '~> 0.11'
  spec.add_development_dependency 'cucumber', '~> 2.1'
  spec.add_development_dependency 'factis', '~> 1.0'
  spec.add_development_dependency 'simplecov', '~> 0.11'
end
