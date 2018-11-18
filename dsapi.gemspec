# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dsapi/version'

Gem::Specification.new do |spec|
  spec.name          = 'dsapi'
  spec.version       = Dsapi::VERSION
  spec.authors       = ['Nicolai Reuschling']
  spec.email         = ['gemdev@reuschling.name']

  spec.summary       = "Client for Joyent's SmartOS Dataset API"
  spec.description   = "Ruby client to consume Joyent's SmartOS Dataset API. More info at https://datasets.joyent.com/docs/"
  spec.homepage      = 'https://github.com/ncreuschling/dsapi'
  spec.license       = 'MIT'

  if spec.respond_to?(:metadata)
    spec.metadata['homepage_uri'] = spec.homepage
    spec.metadata['source_code_uri'] = spec.homepage
    spec.metadata['changelog_uri'] = 'https://github.com/ncreuschling/dsapi/blob/master/CHANGELOG.md'
    spec.metadata['bug_tracker_uri'] = 'https://github.com/ncreuschling/dsapi/issues'
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.17'
  spec.add_development_dependency 'bundler-audit', '~> 0.6'
  spec.add_development_dependency 'guard-rspec', '~> 4.7'
  spec.add_development_dependency 'guard-rubocop', '~> 1.3'
  spec.add_development_dependency 'rake', '~> 12.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop', '~> 0.60'
  spec.add_development_dependency 'rubocop-rspec', '~> 1.13'
  spec.add_development_dependency 'simplecov', '~> 0.10'
  spec.add_development_dependency 'terminal-notifier-guard', '~> 1.7'

  spec.add_dependency 'dry-configurable', '~> 0.7'
  spec.add_dependency 'dry-core', '~> 0.4'
  spec.add_dependency 'dry-transaction', '~> 0.13'
  spec.add_dependency 'faraday', '~> 0.15'
end
