require "sinatra"
get '/' do
  erb :sandwich_parts
end
post '/firstroute' do
  components = params[:components]
  erb :confirm, :locals=>{:components => components}
end

get '/secondroute' do
    components = params[:components]
    toppings = params[:toppings]
    erb :results, :locals=>{:components=>components, :toppings=>toppings}
 end
 
 post '/secondroute' do
    components = params[:components]
    toppings = params[:toppings]
    erb :results, :locals=>{:components=>components, :toppings=>toppings}
 end

	
	
