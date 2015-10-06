require 'rubygems'
require 'bundler'
require 'rake'
Bundler.setup

task default: ['help']

desc 'Display help text'
task :help do
  puts 'css:clear'
  puts 'css:compile'
  puts 'css:compile:prod'
end

namespace :css do
  desc 'Clear the CSS'
  task clear: ['compile:clear']

  desc 'Compile CSS'
  task compile: ['compile:default']

  namespace :compile do
    task :clear do
      puts '*** Clearing CSS ***'
      system 'rm -Rfv public/css/*'
    end

    task default: :clear do
      puts '*** Compiling CSS ***'
      system 'compass compile'
    end

    desc 'Compile CSS for production'
    task prod: :clear do
      puts '*** Compiling CSS ***'
      system 'compass compile --output-style compressed --force'
    end
  end
end
