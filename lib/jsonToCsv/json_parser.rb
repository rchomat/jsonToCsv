require 'json'
require_relative 'exception/invalid_json_format_error'
require_relative 'exception/file_not_found_error'

class JsonParser
  def import(filePath)
    begin
      json = File.read(filePath)
      JSON.parse(json)
    rescue JSON::JSONError
      raise InvalidJsonFormatError.new()
    rescue Exception
      raise FileNotFoundError.new(filePath)
    end
  end
end
