require_relative "operation"
class BinaryOperation < Operation
  attr_accessor :operand_1, :operand_2

  def add_operand(param_op)
    if @operand_1.nil?
      @operand_1 = param_op
    else
      @operand_2 = param_op
    end
  end
end
