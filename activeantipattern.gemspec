# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'active_anti_pattern/version'

Gem::Specification.new do |spec|
  spec.name          = "activeantipattern"
  spec.version       = ActiveAntiPattern::VERSION
  spec.authors       = ["Michał Knapik"]
  spec.email         = ["michal.knapik@u2i.com"]

  spec.summary       = %q{A collection of useful anti-patterns}
  spec.description   = %q{A collection of useful anti-patterns.}
  spec.homepage      = "https://github.com/mknapik/activeantipattern"

  spec.files         = Dir['lib/**/*.rb']

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activerecord"
  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
