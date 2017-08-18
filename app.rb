require "sinatra"

get '/' do
  erb :sandwich_parts
end

post '/firstroute' do 
	components = params[:components].to_s
	erb :firstroute 
	redirect '/confirm?components=' + components
end

post '/confirm' do 
	components = params[:components].split
	erb :confirm, :locals => {:components => components}
end 

post '/secondroute' do 
	components = params[:components].to_s
	confirm = params[:confirm]
	erb :results, :locals => {:components => components, :confirm => confirm}
end 


	
	
