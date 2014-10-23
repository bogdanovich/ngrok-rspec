# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ngrok/rspec/version'

Gem::Specification.new do |spec|
  spec.name          = "ngrok-rspec"
  spec.version       = Ngrok::Rspec::VERSION
  spec.authors       = ["Anton Bogdanovich"]
  spec.email         = ["27bogdanovich@gmail.com"]
  spec.summary       = %q{Ngrok-rspec gem - run capybara specs with ngrok tunnel}
  spec.description   = %q{Ngrok-rspec gem provides ability to run capybara specs with ngrok tunnel}
  spec.homepage      = "https://github.com/bogdanovich/ngrok-rspec"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "ngrok-tunnel", "~> 1.0"
  spec.add_dependency "rspec", "~> 3.1"
  spec.add_dependency "capybara", "~> 2.4"

  spec.add_development_dependency "pry", "~> 0.10"
  spec.add_development_dependency "pry-byebug", "~> 2.0"
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "poltergeist", "~> 1.5"
  spec.add_development_dependency "selenium-webdriver", "~> 2.43"

end
