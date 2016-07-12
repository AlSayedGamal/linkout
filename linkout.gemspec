# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'linkout/version'

Gem::Specification.new do |spec|
  spec.name          = "linkout"
  spec.version       = Linkout::VERSION
  spec.authors       = ["AlSayed Gamal"]
  spec.email         = ["mail.gamal@gmail.com"]

  spec.summary       = %q{linkedin profile web scraper.}
  spec.description   = %q{Simple gem for web-scraping linkedin profiles into ruby object.}
  spec.homepage      = "http://linkedout.alsayedgamal.com"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "guard-rspec", "~> 4.7", ">= 4.7.2"
  spec.add_runtime_dependency "nokogiri", "~> 1.6", ">= 1.6.8"
  spec.add_runtime_dependency "sanitize", "~> 4.0", ">= 4.0.1"
end
