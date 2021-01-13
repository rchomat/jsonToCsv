require 'csv'

class CsvFormatter
  def format(headers, data, destFilePath)
    CSV.open(destFilePath, 'w') do |writer|
      writer << headers

      data.each do |object|
        writer << object.values
      end
    end
  end
end
