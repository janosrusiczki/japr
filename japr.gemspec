require File.expand_path('../lib/japr/version', __FILE__)

Gem::Specification.new do |s|
  s.rubygems_version = '1.8.24'

  # Metadata
  s.name = 'japr'
  s.version = JAPR::VERSION
  s.date = Time.now
  s.summary = <<-EOF
    A powerful asset pipeline for Jekyll that bundles, converts, and minifies
    CSS and JavaScript assets.
  EOF
  s.description = <<-EOF
    Jekyll Asset Pipeline reborn adds asset preprocessing (CoffeeScript, Sass,
    Less, ERB, etc.) and asset compression / minification / gzip (Yahoo YUI
    Compressor, Google Closure Compiler, etc.) to Jekyll.'
  EOF
  s.authors = ['Matt Hodan']
  s.email = 'japr@clicktrackheart.com'
  s.homepage = 'https://github.com/kitsched/japr'
  s.license = 'MIT'
  s.required_ruby_version = '>= 1.9.3'

  # Runtime dependencies
  s.add_runtime_dependency 'jekyll', '~> 3.0'
  s.add_runtime_dependency 'liquid', '~> 3.0'

  # Development dependencies
  s.add_development_dependency 'rake', '~> 10.0'
  s.add_development_dependency 'minitest', '~> 5.2'

  # Files
  s.files = Dir['lib/**/*.rb', 'LICENSE', 'README.md'].to_a
end
