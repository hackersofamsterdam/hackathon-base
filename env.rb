ENV['RACK_ENV'] ||= 'development'
ENV['TZ'] = 'UTC'
DIR_ROOT = File.expand_path File.dirname(__FILE__)
Encoding.default_internal = 'UTF-8'
Encoding.default_external = 'UTF-8'

Bundler.require
Bundler.require :development if ENV['RACK_ENV'] == 'development'

require 'sass/plugin/rack'
Sinatra::Application.use Sass::Plugin::Rack

Sass::Plugin.options[:template_location] = 'sass'
Sass::Plugin.options[:css_location] = './public/css'
Sass::Plugin.options[:style] = :nested

if ENV['RACK_ENV'] != 'development'
  Sass::Plugin.options[:style] = :compressed
  # Sass::Plugin.options[:never_update] = true
  Sass::Plugin.options[:full_exception] = false
end
