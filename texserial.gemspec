# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'texserial/version'

Gem::Specification.new do |spec|
  spec.name          = "texserial"
  spec.version       = Texserial::VERSION
  spec.authors       = ["Andi Bachmann"]
  spec.email         = ["andi.bachmann@geo.uzh.ch"]

  spec.summary       = %q{produce serial letters with pdflatex and yaml-data}
  spec.description   = %q{Write a longer description or delete this line.}

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency "slop"
end
