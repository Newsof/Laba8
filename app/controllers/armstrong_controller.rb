class ArmstrongController < ApplicationController
  def input; end

  def view
    @num = params[:a].to_i
    @num1 = params[:b].to_i
    if res = ArmstrongResult.find_by_a_and_b(@num, @num1)
      @result = ActiveSupport::JSON.decode(res.result)
    else
      @ress = (@num..@num1).select do |num|
        chars = num.to_s.chars
        num == chars.sum { |e| e.to_i**chars.size }
      end
      @count = @ress.size
      @result = @ress
      res = ArmstrongResult.create a: @num, b: @num1, result: ActiveSupport::JSON.encode(@result)
      res.save
    end
  end

  def results
    @result = ArmstrongResult.all
    render xml: @result
  end
end
