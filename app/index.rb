get '/?' do
  erb :index, locals: { msg: hackathon }
end
