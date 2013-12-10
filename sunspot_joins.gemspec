# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sunspot_joins/version'

Gem::Specification.new do |spec|
  spec.name          = "sunspot_joins"
  spec.version       = SunspotJoins::VERSION
  spec.authors       = ["Mike Auclair"]
  spec.email         = ["mike@mikeauclair.com"]
  spec.description   = %q{Add Solr joins to sunspot}
  spec.summary       = %q{Add Solr joins to sunspot}
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'sunspot', '>2.0'
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
