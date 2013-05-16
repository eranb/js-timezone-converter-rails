$:.unshift File.expand_path("../lib",__FILE__)
require 'js-timezone-converter-rails/version'
require 'rake'

Gem::Specification.new do |s|
  s.name                  = 'js-timezone-converter-rails'
  s.version               = JSTimeZoneConverterRails::VERSION
  s.platform              = Gem::Platform::RUBY
  s.summary               = 'JavaScript Timezone Converter library'
  s.description           = 'JavaScript Timezone Converter library for rails applications'
  s.author                = 'Eran Barak Levi'
  s.email                 = 'wtf@wtf.com'
  s.homepage              = 'http://github.com/eranb/js-timezone-converter-rails'
  s.required_ruby_version = '>= 1.8.5'
  s.rubyforge_project     = 'js-timezone-converter-rails'
  s.files                 = FileList["{lib,app}/**/*"].to_a
  s.require_paths         = ["lib"]
end