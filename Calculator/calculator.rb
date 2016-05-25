require_relative "operations/sum"
require_relative "operations/difference"
require_relative "operations/multiplication"
require_relative "operations/division"
require_relative "operations/inverse"
require_relative "operations/square"
require_relative "operations/square_root"
class Calculator

  def add_operand(op)
    if @current_operation.nil?
      @operand_temp = op
    else
      @current_operation.add_operand(op)
    end
  end

  def set_operation(operation)
    operation_klass =
      case operation
      when "+" then Sum
      when "-" then Difference
      when "*" then Multiplication
      when "/" then Division
      when "INV" then Inverse
      when "SQ" then Square
      when "SQRT" then SquareRoot
      end

    @current_operation = operation_klass.new(@operand_temp)
    @operand_temp = nil

  end


  def execute
    result = @current_operation.execute
    clear
    result
  rescue ZeroDivisionError
    "ERROR"
  end

  def clear
    @current_operation = nil
    @operand_temp = nil
  end

end
