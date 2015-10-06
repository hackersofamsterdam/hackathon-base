get '/blogs' do
  erb :'blog/index'
end

get '/blogs/add' do
  erb :'blog/add'
end

get '/blogs/images' do
  erb :'blog/images'
end
