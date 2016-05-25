require_relative "binary_operation"
class Multiplication < BinaryOperation

  def execute
    @operand_1 * @operand_2
  end
end
