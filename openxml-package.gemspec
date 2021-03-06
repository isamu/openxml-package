# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "openxml-package/version"

Gem::Specification.new do |spec|
  spec.name          = "openxml-package"
  spec.version       = OpenXmlPackage::VERSION
  spec.authors       = ["Bob Lail"]
  spec.email         = ["bob.lailfamily@gmail.com"]

  spec.summary       = %q{A Ruby implementation of OpenXmlPackage}
  spec.description   = %q{A Ruby implementation of OpenXmlPackage}
  spec.license       = "MIT"
  spec.homepage      = "https://github.com/openxml/openxml-package"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rubyzip", "~> 1.1.0"
  spec.add_dependency "nokogiri"
  spec.add_dependency "ox"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rails", ">= 3.2", "< 5.0"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "minitest-reporters"
  spec.add_development_dependency "minitest-reporters-turn_reporter"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rr"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "shoulda-context"

end
