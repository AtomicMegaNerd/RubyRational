module Rcd

    def gcd(x, y)
        if (y == 0)
            return x
        else
            return gcd(y, x % y)
        end
    end

    def lcm(x, y)
        (x * y) / gcd(x, y)
    end

    class RcdRational
        def initialize(numer, denom)
            @numer = numer
            @denom = denom
            reduce()
        end

        def reduce()
            g = gcd(@numer, @denom)
            @numer /= g
            @denom /= g
        end

        def reciprocal()
            RcdRational.new(@denom, @numer)
        end

        def to_s()
            "#{@numer}/#{@denom}"
        end

        def +(other)
            l = lcm(@denom, other.denom)
            RcdRational.new(
                (@numer * l / @denom) + (other.numer * l / other.denom), l
            )
        end

        def -(other)
            l = lcm(@denom, other.denom)
            RcdRational.new(
                (@numer * l / @denom) - (other.numer * l / other.denom), l
            )
        end

        def *(other)
            RcdRational.new(@numer * other.numer, @denom * other.denom)
        end

        def /(other)
            self * other.reciprocal
        end

        attr_accessor :numer
        attr_accessor :denom
    end
end
