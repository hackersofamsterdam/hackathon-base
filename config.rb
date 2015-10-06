require 'bootstrap-sass'
require './app'

project_path = Sinatra::Application.root

http_path = '/'
http_stylesheets_path = '/css'
http_images_path  = '/img'
http_javascripts_path = '/js'

css_dir = File.join 'public', 'css'
sass_dir = File.join 'sass'
images_dir = File.join 'public', 'img'
javascripts_dir = File.join 'public', 'js'
fonts_dir = File.join 'public', 'fonts'

preferred_syntax = :scss
relative_assets = false
line_comments = false
output_style = :compressed
