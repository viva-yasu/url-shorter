# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'url_shorter/version'

Gem::Specification.new do |spec|
  spec.name          = "url_shorter"
  spec.version       = UrlShorter::VERSION
  spec.authors       = ["Yasunari Kondo"]
  spec.email         = ["kyasunari123v@gmail.com"]

  spec.summary       = %q{short URL generator}
  spec.description   = %q{UrlShrinker is a simple short URL generator via Google URL Shortener}
  spec.homepage      = "https://github.com/viva-yasu/url-shorter"
  spec.license       = "MIT"

  
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
