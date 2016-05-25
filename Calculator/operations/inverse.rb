require_relative "unary_operation"
class Inverse < UnaryOperation

  def execute
    1.0 / @operand
  end
end
