require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    @backwards = params[:name].reverse
    "#{@backwards}"
  end
  
  get '/square/:number' do
    @square = params[:number].to_i ** 2
    "#{@square}"
  end
  
  get '/say/:number/:phrase' do
    string = ""
    (params[:number].to_i).times do
      string += "#{@params[:phrase]}\n"
    end
    string
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
    if operation == "add"
      answer = number1 + number2
    elsif operation == "subtract"
      answer = number1 - number2
    elsif operation == "multiply"
      answer = number1 * number2
    elsif operation == "divide"
      answer = number1/number2
    else
      "no bueno"
    end
    answer
  end
end