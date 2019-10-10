require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do 
    @reversed_name = params[:name].reverse  
    "#{@reversed_name}"
  end 

  get '/square/:number' do
    @squared_number = params[:number].to_i * params[:number].to_i
    "#{@squared_number}"
  end 

  get '/say/:number/:phrase' do 

    phrase = ""
    params[:number].to_i.times do 
      phrase += params[:phrase]
    end 
    phrase 
  end 

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @new_string = [params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]].join(" ")
    "#{@new_string}." 
  end 

  get '/:operation/:number1/:number2' do
    if params[:operation] == "add"
      answer = params[:number1].to_i + params[:number2].to_i 
    elsif params[:operation] == "subtract"
      answer = params[:number1].to_i - params[:number2].to_i 
    elsif params[:operation] == "divide"
      answer = params[:number1].to_i / params[:number2].to_i 
    elsif params[:operation] == "multiply"
      answer = params[:number1].to_i * params[:number2].to_i
    end 
    answer.to_s
  end 

end