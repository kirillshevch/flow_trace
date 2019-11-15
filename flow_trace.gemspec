lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'flow_trace/version'

Gem::Specification.new do |spec|
  spec.name          = 'flow_trace'
  spec.version       = FlowTrace::VERSION
  spec.authors       = ['Kirill Shevchenko']
  spec.email         = ['hello@kirillshevch.com']

  spec.summary       = 'Brand new remote app inspecting tool'
  spec.description   = spec.summary
  spec.homepage      = 'https://github.com/kirillshevch/flow_trace'
  spec.license       = 'MIT'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/kirillshevch/flow_trace'
  spec.metadata['changelog_uri'] = 'https://github.com/kirillshevch/flow_trace/blob/master/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'bin'
  spec.executables   = 'flow_trace'
  spec.require_paths = ['lib']

  spec.add_dependency 'http'
  spec.add_dependency 'sinatra'
  spec.add_dependency 'dry-configurable'

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'byebug'
end
