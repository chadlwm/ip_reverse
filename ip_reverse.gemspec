# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ip_reverse/version'

Gem::Specification.new do |gem|
  gem.name          = "ip_reverse"
  gem.version       = IpReverse::VERSION
  gem.authors       = ["chad_lwm"]
  gem.email         = ["chad_lwm@hotmail.com"]
  gem.description   = %q{ip address reverse}
  gem.summary       = %q{ip address reverse, keep it simple, stupid}
  gem.homepage      = "https://github.com/chadlwm/ip_reverse"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.add_runtime_dependency "rest-client"
  gem.license = 'MIT'
end
