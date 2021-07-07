require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    @reverse_name = @name.reverse
    "#{@reverse_name}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    @square_num = @number * @number
    "#{@square_num}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    long_phrase = []

    @number.times do 
      long_phrase << @phrase
    end
    long_phrase.join(" ")
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

    @operation = params[:operation].to_s
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    numadd = @number1 + @number2
    numsub = @number1 - @number2
    nummulti = @number1 * @number2
    numdiv = @number1 / @number2

    if @operation == "add"
      "#{numadd}"
    elsif @operation == "subtract"
      "#{numsub}"
    elsif @operation == "multiply"
      "#{nummulti}"
    elsif @operation == "divide"
      "#{numdiv}"
    end

  end

end