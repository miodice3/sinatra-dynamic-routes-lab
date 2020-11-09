require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    #binding.pry
    name = params[:name].to_s
    name.reverse
  end

  get "/square/:number" do
    number = params[:number].to_i
    square = number**2
    "#{square}"
  end

  get "/say/:number/:phrase" do
    #binding.pry
    number = params[:number].to_i
    phrase = params[:phrase].to_s
    #binding.pry
    string = ""
    i = 0
    while i < number do
      string << phrase
      i += 1
    end

    "#{string}"
    
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    word1 = params[:word1].to_s
    word2 = params[:word2].to_s
    word3 = params[:word3].to_s
    word4 = params[:word4].to_s
    word5 = params[:word5].to_s
    string = ""
    string << word1 + " " << word2 + " "<< word3 + " "<< word4 + " "<< word5 << "."
    "#{string}"

  end

  get "/:operation/:number1/:number2" do
    operation = params[:operation].to_s
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    #binding.pry
    if operation == "add"
      adds = number1 + number2
      return "#{adds}"
    elsif operation == "subtract"
      subtracts = number2 - number1
      return "#{subtracts}"
    elsif operation == "multiply"
      multiplies = number1 * number2
      return "#{multiplies}"
    elsif operation == "divide"
      #binding.pry
      divides = number1 / number2
      return "#{divides}"
    end
    #binding.pry
    # adds = number1 + number2
    # subtracts = number2 - number1
    # multiplies = number1 * number2
    # divides = number1 / number2

    #binding.pry
  end
#  {"operation"=>"add", "number1"=>"215", "number2"=>"93"}
end