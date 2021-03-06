
require_relative 'config/environment'
class App < Sinatra::Base

  get '/reversename/:name' do
    @user_name = params[:name]
    "Hello #{@user_name.reverse}!"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    @square = @num * @num
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase}\n" * @num
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} " + "#{@word2} " + "#{@word3} " + "#{@word4} " + "#{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    case @operation
    when "add"
      return "#{@num1 + @num2}"
    when "subtract"
      return "#{@num1 - @num2}"
    when "multiply"
      return "#{@num1 * @num2}"
    when "divide"
      return "#{@num1 / @num2}"
    end

  end

end
