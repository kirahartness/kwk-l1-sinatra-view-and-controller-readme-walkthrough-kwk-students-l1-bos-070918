require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'views'
  end

  get '/' do
    erb :homepage
  
  end 
  
  get '/index.html' do
    erb :index
  
  end 
  
  get '/shopping_lover.erb' do
    erb :shopping_lover
  
  end 
  
  get '/foodie.erb' do
    erb :foodie
  
  end 
  
  get '/outdoor_lover.erb' do
    erb :outdoor_lover
  
  end 
  
  get '/' do
    erb :homepage
  
  end 
  
  post '/results' do
   answers = params.values
   @total = 0
   answers.each do |answer|
     @total += answer.to_i
   end
   
   puts @total
   
   if @total < 7 
     erb :entertainment
   elsif @total < 11
     erb :foodie
   elsif @total < 16
     erb :outdoors
   elsif @total < 22
     erb :shopping
   elsif @total < 26
     erb :education
   end
 end
 
 end 
