require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
get '/reversename/:name' do
  @user_name = params[:name]
  "#{@user_name.reverse}"
end

get '/square/:number' do
  num1 = params[:number]
  (num1.to_i**2).to_s
end 

get '/say/:number/:phrase' do
num1 = params[:number].to_i 
@phrase = params[:phrase]
(@phrase * num1)
end 

get '/say/:word1/:word2/:word3/:word4/:word5' do
  phrase = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
end

get '/add/:num1/:num2' do
  num1 = params[:num1].to_i 
  num2 = params[:num2].to_i 
  (num1 + num2).to_s 
end 
get '/subtract/:num1/:num2' do
  num1 = params[:num1].to_i 
  num2 = params[:num2].to_i 
  (num1 - num2).to_s 
end 
get '/multiply/:num1/:num2' do
  num1 = params[:num1].to_i 
  num2 = params[:num2].to_i 
  (num1 * num2).to_s 
end 
get '/divide/:num1/:num2' do
  num1 = params[:num1].to_i 
  num2 = params[:num2].to_i 
  (num1 / num2).to_s 
end 
end