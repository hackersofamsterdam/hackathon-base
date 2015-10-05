require './env.rb'
require './helpers.rb'

Dir['./app/**/*.rb'].each { |file| require file }
