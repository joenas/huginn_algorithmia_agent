# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "huginn_algorithmia_agent"
  spec.version       = '0.1'
  spec.authors       = ["Jon Neverland"]
  spec.email         = ["jon@jonnev.se"]

  spec.summary       = %q{Huginn agent to interact with algorithmia.com}

  spec.homepage      = "https://github.com/joenas/huginn_algorithmia_agent"

  spec.license       = "MIT"


  spec.files         = Dir['LICENSE.txt', 'lib/**/*']
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = Dir['spec/**/*.rb'].reject { |f| f[%r{^spec/huginn}] }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", ">= 12.3.3"

  spec.add_runtime_dependency "huginn_agent"
  spec.add_runtime_dependency 'algorithmia', '~> 1.0', '>= 1.0.1'
end
