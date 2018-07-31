require_relative 'config/environment'

class App < Sinatra::Base
  
get '/reversename/:name' do
  @name = params[:name]
  return @name.reverse
end

get '/square/:num1' do
  @num1 = params[:num1].to_i
  (@num1*@num1).to_s
end

get '/say/:number/:phrase' do
  final_string = ""
  (params[:number].to_i).times do
    final_string += "#{params[:phrase]}"
  end
  final_string
end
  
get '/say/:word1/:word2/:word3/:word4/:word5' do
  @word1 = params[:word1]
  @word2 = params[:word2]
  @word3 = params[:word3]
  @word4 = params[:word4]
  @word5 = params[:word5]
  "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
end

get '/:operation/:number1/:number2' do
  @operation = params[:operation]
  @number1 = params[:number1].to_i
  @number2 = params[:number2].to_i
  if @operation == "multiply"
    (@number1*@number2).to_s
  elsif @operation == "divide"
    (@number1 / @number2).to_s
  elsif @operation == "add"
    (@number1 + @number2).to_s
  elsif @operation == "subtract"
    (@number1 - @number2).to_s
  else
    "Cannot do this operation"
  end
end
    
end
