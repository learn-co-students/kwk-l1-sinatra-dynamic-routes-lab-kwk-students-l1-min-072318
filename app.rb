require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  
  # 1
  get '/reversename/:name' do 
    @name = params[:name].reverse
  end
  
  
 
  # 2
  get '/square/:num' do 
    num = params[:num].to_i
    (num ** 2).to_s
  end 
  
 
 
  # 3
  get '/say/:num/:phrase' do 
    final_string = ""
    (params[:num].to_i).times do 
      final_string += "#{params[:phrase]}"
    end
    final_string
  end 

# _ or_
  # get '/say/:num1/:phrase' do 
  #   num1 = params[:num1].to_i
  #   @phrase = params[:phrase]
  #   (@phrase * num1)
  # end
  
  
  
  # 4 interpolate
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end
  
 
  
  # 5 build a conditional
  get '/:operation/:num1/:num2' do
    @operation = params[:operation]
    @num1 = params[:num1].to_i
    @num2 = params[:num2].to_i
    if @operation == "multiply"
      (@num1 * @num2).to_s
    elsif @operation == "divide"
      (@num1 / @num2).to_s
    elsif @operation == "add"
      (@num1 + @num2).to_s
    elsif @operation == "subtract"
      (@num1 - @num2).to_s
    else
      "Cannot do that operation"
    end 
  end 
end





