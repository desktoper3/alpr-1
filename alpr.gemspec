
lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'alpr/version'

Gem::Specification.new do |spec|
  spec.name          = 'alpr'
  spec.version       = Alpr::VERSION
  spec.authors       = ['Andrew Monks', 'Zach Whitehead']
  spec.email         = ['a@monks.co']

  spec.summary       = 'Ruby wrapper for openalpr'
  spec.homepage      = 'http://github.com/zjwhitehead/alpr'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.9'
  spec.add_development_dependency 'json'
  spec.add_development_dependency 'rake', '~> 10.0'
end
