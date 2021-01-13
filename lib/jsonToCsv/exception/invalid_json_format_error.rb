class InvalidJsonFormatError < SyntaxError
  def initialize(msg = "Invalid format json")
    super
  end
end
