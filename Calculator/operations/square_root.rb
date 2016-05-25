require_relative "unary_operation"
class SquareRoot < UnaryOperation

  def execute
     Math.sqrt(@operand)
  end
end
