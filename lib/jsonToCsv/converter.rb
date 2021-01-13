class Converter
  def initialize(parser, formatter)
    @parser = parser
    @formatter = formatter
  end

  def convertFile(sourceFilePath, destFilePath)
    data = []
    @parser.import(sourceFilePath).each do | value |
      data.push(flattenData(value))
    end

    @formatter.format(data.at(0).keys, data, destFilePath)
  end

  private def flattenData(data, key = nil)
    ret = {}

    if data.is_a?(Hash)
      data.each_pair do |subKey, value|
        ret.merge!(flattenData(value, key.nil? ? subKey : key + '.' + subKey))
      end
    elsif data.is_a?(Array)
      ret[key] = data.join(',')
    else
      ret[key] = data
    end

    return ret
  end
end
