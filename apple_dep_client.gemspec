# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'apple_dep_client/version'

Gem::Specification.new do |spec|
  spec.name          = "apple_dep_client"
  spec.version       = AppleDEPClient::VERSION
  spec.authors       = ["Albert Wang"]
  spec.email         = ["albert@cellabus.com"]
  spec.description   = %q{Client for Apple Device Enrollment Program}
  spec.summary       = %q{This gem provides an easy way to authenticate and interact with Apple's Device Enrollment Program}
  spec.homepage      = "https://github.com/cellabus/apple_dep_client"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 3.2"
  spec.add_development_dependency "simplecov", "~> 0.9.2"
end
