class Triangle

  def initialize(s1 = nil, s2 = nil, s3 = nil)

    if s1 <= 0 || s2 <= 0 || s3 <= 0
       raise TriangleError
    end

    if s1 == nil || s2 == nil || s3 == nil 
      raise TriangleError
    end

    s1_s2 = s1 + s2
    s3_s2 = s3 + s2
    s1_s3 = s1 + s3

    if s1_s2 <= s3 || s3_s2 <= s1 || s1_s3 <= s2
      raise TriangleError
    end

    result = nil 
    if s1 != s2 && s2 != s3 && s3 != s1
      result = :scalene
    end

    if s1 == s2 || s2 == s3 || s3 == s1
      result = :isosceles
    end
    
    if s1 == s2 && s2 == s3
      result = :equilateral
    end

    @result = result
  end

  def kind
    @result
  end

  class TriangleError < StandardError
    def message
      "GIVE A VALID TRIANGLE"
    end
  end
end