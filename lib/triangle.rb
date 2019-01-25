class Triangle
  attr_accessor :side1, :side2, :side3, :kind
   # write code here
   def initialize(side1, side2, side3)
     @side1 = side1
     @side2 = side2
     @side3 = side3
   end

   def kind
      if (side1 == side2) && (side2 == side3) && (side1 == side3)
        self.kind = :equilateral

      elsif (side1 == side2) || (side2 == side3) || (side1 == side3)
        self.kind = :isosceles

      elsif (side1 != side2) && (side2 != side3) && (side1 != side3)
        self.kind = :scalene

      else
        self.kind = :TriangleError
      end
   end

   def error

   class TriangleError < StandardError
   end

end
