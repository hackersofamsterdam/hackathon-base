ENV['RACK_ENV'] ||= 'development'
ENV['TZ'] = 'UTC'
DIR_ROOT = File.expand_path File.dirname(__FILE__)
Encoding.default_internal = 'UTF-8'
Encoding.default_external = 'UTF-8'

Bundler.require
Bundler.require :development if ENV['RACK_ENV'] == 'development'

require './helpers.rb'

Dir['./app/**/*.rb'].each { |file| require file }
