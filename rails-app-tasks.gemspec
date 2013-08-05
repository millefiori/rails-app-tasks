# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails/app/tasks/version'

Gem::Specification.new do |spec|
  spec.name          = "rails-app-tasks"
  spec.version       = Rails::App::Tasks::VERSION
  spec.authors       = ["Yoshimoto"]
  spec.email         = ["toshi@millefiori.co.jp"]
  spec.description   = %q{ rake app:init }
  spec.summary       = %q{ rake app:init }
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rails"
end
