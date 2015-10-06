get '/about' do
  erb :about
end

get '/?' do
  erb :index, locals: { msg: hackathon }
end
