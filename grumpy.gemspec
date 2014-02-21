# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'grumpy/version'

Gem::Specification.new do |spec|
  spec.name          = "grumpy"
  spec.version       = Grumpy::VERSION
  spec.authors       = ["Vlad Andersen"]
  spec.email         = ["vlad.andersen@gmail.com"]
  spec.description   = %q{SVG Data URIs, done right}
  spec.summary       = %q{SVG Data URIs, done right}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
