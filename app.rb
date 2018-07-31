require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do 
    @reversename=params[:name].reverse
  end
  get '/square/:number' do 
    @squarenumber=params[:number]
    (@squarenumber.to_i ** 2).to_s
  end 
  get '/say/:number/:phrase' do
    final_phrase=""
    (params[:number].to_i).times do
    final_phrase+="#{params[:phrase]}"
  end
  final_phrase
end
get '/say/:word1/:word2/:word3/:word4/:word5' do 
  "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
end
get '/:operation/:number1/:number2' do 
 @operation = params[:operation]
 @number1 = params[:number1].to_i
 @number2 = params[:number2].to_i
 if @operation == "add" 
   output = @number1 + @number2
 elsif @operation == "subtract" 
   output = @number1 - @number2 
 elsif @operation == "divide" 
   output = @number1 / @number2 
 elsif @operation == "multiply" 
   output = @number1 * @number2
end
 output.to_s
end
end
