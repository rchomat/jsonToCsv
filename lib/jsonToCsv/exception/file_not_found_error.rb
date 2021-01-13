class FileNotFoundError < SyntaxError
  def initialize(filePath)
    super('File ' + filePath + ' not found')
  end
end
