lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "fixcase/version"

Gem::Specification.new do |spec|
  spec.name          = "fixcase"
  spec.version       = Fixcase::VERSION
  spec.authors       = ["Colin Bartlett"]
  spec.email         = ["colin@colinabartlett.com"]

  spec.summary       = "When users input fields in all uppercase or all lowercase, this will titlecase it."
  spec.homepage      = "https://github.com/cbartlett/fixcase"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
