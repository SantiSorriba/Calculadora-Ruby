require_relative "unary_operation"
class Square < UnaryOperation

  def execute
    @operand ** 2
  end
end
