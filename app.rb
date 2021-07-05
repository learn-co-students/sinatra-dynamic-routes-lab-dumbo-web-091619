require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
   params[:name].to_s.reverse
  end 

  get '/square/:number' do
    my_number = params[:number].to_i
    "#{my_number * my_number}"
   end 

  get '/say/:number/:phrase' do 
    number_of_times = params[:number].to_i
    phrase = params[:phrase].to_s

    phrase * number_of_times

  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    first = params[:word1].to_s
    second = params[:word2].to_s
    third = params[:word3].to_s
    fourth = params[:word4].to_s
    fifth = params[:word5].to_s
   "#{first} #{second} #{third} #{fourth} #{fifth}."
  end 

  get '/:operation/:number1/:number2' do
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i

    answer = 'Unable to perform this operation'

    case params[:operation]
    when 'add'
      answer = (number1 + number2).to_s
    when 'subtract'
      answer = (number1 - number2).to_s
    when 'multiply'
      answer = (number1 * number2).to_s
    when 'divide'
      answer = (number1 / number2).to_s
    end
  end

end