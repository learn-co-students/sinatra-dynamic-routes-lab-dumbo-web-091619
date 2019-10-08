require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do 
    @name = params[:name].reverse
    @name
  end

  get '/square/:number' do 
    @square = params[:number].to_i
    "#{@square**2}"
  end

  get '/say/:number/:phrase' do 
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @phr = []
    @num.times do 
      @phr << @phrase
    end
    "#{@phr.join(' ')}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word = []
    @word << params[:word1]
    @word << params[:word2]
    @word << params[:word3]
    @word << params[:word4]
    @word << params[:word5]
    "#{@word.join(' ')}."
  end

  get '/:operation/:number1/:number2' do 
    @opr = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if @opr == "add"
      "#{@num1+@num2}"
    elsif @opr == "subtract"
      "#{@num1-@num2}"
    elsif @opr == "multiply"
      "#{@num1*@num2}"
    elsif @opr == "divide"
      "#{@num1/@num2}"
    end
  end

end