require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    og_string = params["string"]
    @rv_string = og_string.reverse
    erb :reversed
  end

  get '/friends' do
    @friends = [
      'Emily Wilding Davidson',
      'Harriet Tubman',
      'Joan of Arc',
      'Malala Yousafzai',
      'Sojourner Truth'
    ]
    erb :friends
  end

end