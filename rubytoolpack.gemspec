# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rubytoolpack/version'

Gem::Specification.new do |spec|
  spec.name          = "rubytoolpack"
  spec.version       = Rubytoolpack::VERSION
  spec.authors       = ["Ivan Storck"]
  spec.email         = ["ivanoats@gmail.com"]
  spec.description   = %q{My favorite rails apps tools}
  spec.summary       = %q{My favorite rails apps tools, packaged together at last}
  spec.homepage      = "http://ivanoats.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency("pry")
  spec.add_dependency("pry-rails")
  spec.add_dependency("pry-debugger")
  spec.add_dependency("pry-doc")
  spec.add_dependency("hirb")
  spec.add_dependency("awesome_print")

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
