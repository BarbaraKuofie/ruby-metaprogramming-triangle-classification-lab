class Triangle
  # write code here
  attr_reader :left, :right, :bottom

  def initialize(left, right, bottom)
    @left = left
    @right  = right
    @bottom = bottom
  end
   
  def kind
    if left == right && right == bottom && left == bottom
     :equilateral 
      elsif left == right || right == bottom || left == bottom
        :isosceles 
      elsif left != right && right != bottom && left != bottom 
        :scalene 
      else 
        raise TriangleError
    end 
  end   
  class TriangleError < StandardError
        # illegal = 
        # unequal = ((left + right) < bottom) || ((left + bottom) < right) || ((right + bottom) < left)
        # if illegal || unequal
        # end 
  end
end 
