require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name"do
   @user_name = params[:name].reverse
    "#{@user_name}"
  end


  get "/square/:number"do
   @product = params[:number].to_i * params[:number].to_i
    
     return "#{@product}"
  end

  get "/say/:number/:phrase"do
  @phrase = params[:phrase].to_s * params[:number].to_i
   return "#{@phrase}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5"do
   @string = "#{params[:word1]} " + "#{ params[:word2]} " + "#{params[:word3]} " + "#{params[:word4]} " + "#{params[:word5]}."
    @string
  end
  
  get "/:operation/:number1/:number2"do
  @sum = [params[:number1].to_i + params[:number2].to_i,params[:number1].to_i - params[:number2].to_i,@sum3 = params[:number1].to_i * params[:number2].to_i,params[:number1].to_i / params[:number2].to_i]
   return @sum.to_s
  end 

end