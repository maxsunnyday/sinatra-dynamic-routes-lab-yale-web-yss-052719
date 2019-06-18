require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    square = params[:number].to_i ** 2
    "#{square.to_s}"
  end

  get '/say/:number/:phrase' do
    number = params[:number].to_i
    "#{params[:phrase]}" * number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    if params[:operation] == "add"
      sum = number1 + number2
      "#{sum}"
    elsif params[:operation] == "subtract"
      subtract = number1 - number2
      "#{subtract}"
    elsif params[:operation] == "multiply"
      product = number1 * number2
      "#{product}"
    elsif params[:operation] == "divide"
      divide = number1 / number2
      "#{divide}"
    end
  end
end