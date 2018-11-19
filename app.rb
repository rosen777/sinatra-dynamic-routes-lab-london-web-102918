require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    @user_name = params[:name].reverse
  end

  get "/square/:number" do
    @number = params[:number].to_i
    @square = @number * @number
    "#{@square}"
  end

  get "/say/:number/:phrase" do
    @repeat = ""
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @number.times do
      @repeat += "#{@phrase}\n"
    end
    @repeat
  end

    get "/say/:word1/:word2/:word3/:word4/:word5" do
      @word1 = params[:word1]
      @word2 = params[:word2]
      @word3 = params[:word3]
      @word4 = params[:word4]
      @word5 = params[:word5]
      "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
    end

    get "/:operation/:number1/:number2" do
      @num1 = params[:number1].to_i
      @num2 = params[:number2].to_i
      @multiply = @num1 * @num2
      @add = @num1 + @num2
      @subtract = @num2 - @num1
      @divide = @num1 / @num2
      case params[:operation]
        when "multiply"
          "#{@multiply}"
        when "subtract"
          "#{@subtract}"
        when "add"
          "#{@add}"
        when "divide"
          "#{@divide}"
        end
    end


end
