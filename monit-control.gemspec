# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'monit/control/version'

Gem::Specification.new do |spec|
  spec.name          = "monit-control"
  spec.version       = Monit::Control::VERSION
  spec.authors       = ["Damián Silvani"]
  spec.email         = ["munshkr@gmail.com"]
  spec.description   = %q{Ruby DSL for generating Monit control files and tasks for management.}
  spec.summary       = %q{A Ruby DSL for generating Monit control files,
                          with Rake and Capistrano tasks for managing a Monit
                          daemon and its services.}
  spec.homepage      = "https://github.com/munshkr/monit-control"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
