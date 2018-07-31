require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
get '/reversename/:name'
  @user_name = params[:name]
  "#{@user_name.reverse}"
end

# get '/square/:number'
#   num1 = params [:number].to_i
#   (num1*num1).to_s
# end 

# get '/say/:number/:phrase'
#   @phrase = params[:phrase]
#   @num1 = params[:number]
#   "#{@phrase}*#{@num1}"
# end 

# get '/say/:word1/:word2/:word3/:word4/:word5'
  