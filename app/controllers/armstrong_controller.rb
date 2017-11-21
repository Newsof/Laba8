class ArmstrongController < ApplicationController
  def input
  end

  def view
    @num = params[:a].to_i
    @num1 = params[:b].to_i
    @res = []
    @count = 0
    (@num..@num1).each do |num|
      m = num.to_s.split(//)
      s = num.to_s.size
      sc = 0
      s.times { |i| sc += m[i].to_i**s}
      if (num.to_i == sc)
        @res << sc
        @count += 1
      end
      end
  end
end
