# frozen_string_literal: true

require_relative 'lib/labelryb/version'

Gem::Specification.new do |spec|
  spec.name = 'labelryb'
  spec.version = Labelryb::VERSION
  spec.authors = ['ricksterhd123']
  spec.email = ['ricksterhd123@gmail.com']

  spec.summary = 'Labelry API client'
  spec.description = 'Convert ZPL to PDF via command-line'
  spec.homepage = 'https://github.com/ricksterhd123'
  spec.required_ruby_version = '>= 3.0.0'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/ricksterhd123'

  spec.files =
    Dir.chdir(__dir__) do
      `git ls-files -z`.split("\x0").reject do |f|
        (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|circleci)|appveyor)})
      end
    end

  spec.executables = ['labelryb']
  spec.require_paths = ['lib']
  spec.metadata['rubygems_mfa_required'] = 'true'
end
