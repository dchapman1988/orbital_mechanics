# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'orbital_mechanics/version'

Gem::Specification.new do |spec|
  spec.name          = "orbital_mechanics"
  spec.version       = OrbitalMechanics::VERSION
  spec.authors       = ["David Chapman"]
  spec.email         = ["dchapman1988@gmail.com"]
  spec.description   = %q{The Orbital Mechanics Ruby Library}
  spec.summary       = %q{Aims to provide a nice clean Ruby library for solving common problems encountered in astrodynamics, ballistics, and celestial mechanics.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
end
